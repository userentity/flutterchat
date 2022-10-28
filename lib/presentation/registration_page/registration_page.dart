import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../core/const/ui.dart';
import '../../core/chat_router/chat_router.gr.dart';
import '../../core/services/loading_service.dart';
import '../../core/services/toast_service.dart';
import '../../core/utils/margin.dart';
import '../../core/validators/validators.dart';
import '../../service_locator.dart' as locator;
import '../widgets/auth/auth_buttons.dart';
import '../widgets/profile/avatar_input.dart';
import '../widgets/gradient_button.dart';
import '../widgets/text_input.dart';
import '../widgets/layout/scaffold_scroll_bottom.dart';
import 'bloc/registration_bloc.dart';
import 'bloc/registration_event.dart';
import 'bloc/registration_state.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController? _nameTextController;
  TextEditingController? _emailTextController;
  TextEditingController? _passwordTextController;
  TextEditingController? _textConfirmPasswordController;

  @override
  void initState() {
    super.initState();
    ToastService.init(context);
    _nameTextController = TextEditingController();
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();
    _textConfirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    _nameTextController?.dispose();
    _emailTextController?.dispose();
    _passwordTextController?.dispose();
    _textConfirmPasswordController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator.getIt<RegistrationBloc>(),
      child: BlocConsumer<RegistrationBloc, RegistrationState>(
        listener: (context, state) async {
          if (state is RegistrationLoading) {
            LoadingService.show();
          } else {
            LoadingService.pop();
          }

          if (state is RegistrationSuccess) {
            context.router.replaceAll([const MainRoute()]);
          }

          if (state is RegistrationError) {
            ToastService.showError(state.text);
          }
        },
        builder: (context, state) {
          return ScaffoldScrollBottom(
            appBar: AppBar(
              title: Text(AppLocalizations.of(context)!.createAccount),
            ),
            body: SafeArea(
              child: Padding(
                padding: const Margin.all(UI.padding),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      AvatarInput(
                        size: 130,
                        onSuccess: (imagePath) => {},
                      ),
                      TextInput(
                        label: AppLocalizations.of(context)!.name,
                        onValidate: Validators.name,
                        controller: _nameTextController,
                      ),
                      TextInput(
                        label: AppLocalizations.of(context)!.email,
                        onValidate: Validators.email,
                        controller: _emailTextController,
                      ),
                      TextInput(
                        label: AppLocalizations.of(context)!.password,
                        onValidate: Validators.password,
                        controller: _passwordTextController,
                        isPassword: true,
                      ),
                      TextInput(
                        label: AppLocalizations.of(context)!.confirmPassword,
                        marginBottom: UI.padding * 2,
                        controller: _textConfirmPasswordController,
                        isPassword: true,
                        onValidate: (text) {
                          if (_passwordTextController!.text.length >= 8 &&
                              _passwordTextController!.text != text) {
                            return AppLocalizations.of(context)!
                                .confirmPasswordValidation;
                          }
                          return null;
                        },
                      ),
                      GradientButton(
                        onPressed: () => _submit(context),
                        text: AppLocalizations.of(context)!.nextBtn,
                      ),
                      const SizedBox(
                        height: UI.padding * 2,
                      ),
                      AuthButtons(
                        onGoogleTap: () => _googleSignIn(context),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _googleSignIn(BuildContext context) {
    context
        .read<RegistrationBloc>()
        .add(const RegistrationSignUpGooglePressed());
  }

  void _submit(BuildContext context) {
    if (_formKey.currentState?.validate() == true) {
      String name = _nameTextController!.text;
      String email = _emailTextController!.text;
      String password = _passwordTextController!.text;
      context.read<RegistrationBloc>().add(
            RegistrationSignUpPressed(
              name: name,
              email: email,
              password: password,
            ),
          );
    }
  }
}
