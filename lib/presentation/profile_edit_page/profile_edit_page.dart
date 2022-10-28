import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/const/ui.dart';
import '../../core/utils/margin.dart';
import '../../service_locator.dart' as locator;
import '../widgets/profile/avatar_input.dart';
import '../widgets/layout/scaffold_small_title.dart';
import '../widgets/loading_indicator.dart';
import '../widgets/text_input.dart';
import 'bloc/profile_edit_bloc.dart';
import 'bloc/profile_edit_event.dart';
import 'bloc/profile_edit_state.dart';

// TODO loading
class ProfileEditPage extends StatefulWidget {
  const ProfileEditPage({Key? key}) : super(key: key);

  @override
  State<ProfileEditPage> createState() => _ProfileEditPageState();
}

class _ProfileEditPageState extends State<ProfileEditPage> {
  final _formKey = GlobalKey<FormState>();

  final _nameTextController = TextEditingController();

  String? _imagePath;

  @override
  void dispose() {
    super.dispose();
    _nameTextController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator.getIt<ProfileEditBloc>(),
      child: BlocConsumer<ProfileEditBloc, ProfileEditState>(
        listener: (context, state) {
          if (state is ProfileEditLoadSuccess) {
            _nameTextController.text = state.user.name;
          }

          if (state is ProfileUpdateSuccess) {
            context.router.pop();
          }
        },
        builder: (context, state) {
          return ScaffoldSmallTitle(
            title: const Text("Edit Profile"),
            leadingWidth: 70,
            leading: TextButton(
              onPressed: () => context.router.pop(),
              child: const Text("Cancel"),
            ),
            actions: [
              TextButton(
                onPressed: () => _submit(context),
                child: const Text("Done"),
              ),
            ],
            body: Padding(
              padding: const Margin.all(UI.padding),
              child: Column(
                children: [
                  if (state is ProfileEditLoadSuccess) ...[
                    AvatarInput(
                      size: 150,
                      onSuccess: (imagePath) {
                        _imagePath = imagePath;
                      },
                    ),
                    Form(
                      key: _formKey,
                      child: TextInput(
                        label: "Name",
                        controller: _nameTextController,
                      ),
                    ),
                  ] else if (state is ProfileEditLoading) ...[
                    const Center(
                      child: LoadingIndicator(),
                    )
                  ]
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _submit(BuildContext context) {
    if (_formKey.currentState?.validate() == true) {
      String name = _nameTextController.text;
      String? imagePath = _imagePath;

      context.read<ProfileEditBloc>().add(ProfileEditSubmitted(
            name: name,
            imagePath: imagePath,
          ));
    }
  }
}
