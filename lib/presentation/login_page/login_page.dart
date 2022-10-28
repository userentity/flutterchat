import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../core/chat_router/chat_router.gr.dart';
import '../../core/const/ui.dart';
import '../../core/services/loading_service.dart';
import '../../core/services/toast_service.dart';
import '../../core/utils/margin.dart';
import '../../core/validators/validators.dart';
import '../../service_locator.dart' as locator;
import '../widgets/auth/auth_buttons.dart';
import '../widgets/gradient_button.dart';
import '../widgets/layout/scaffold_scroll_bottom.dart';
import '../widgets/text_input.dart';
import 'bloc/login_bloc.dart';
import 'bloc/login_event.dart';
import 'bloc/login_state.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController? _textEmailController;
  TextEditingController? _textPasswordController;

  @override
  void initState() {
    super.initState();
    ToastService.init(context);
    _textEmailController = TextEditingController();
    _textPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    _textEmailController?.dispose();
    _textPasswordController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator.getIt<LoginBloc>(),
      child: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) async {
          if (state is LoginLoading) {
            LoadingService.show();
          } else {
            LoadingService.pop();
          }

          if (state is LoginSuccess) {
            context.router.replaceAll([const MainRoute()]);
          }

          if (state is LoginError) {
            ToastService.showError(state.text);
          }
        },
        builder: (context, state) {
          return ScaffoldScrollBottom(
            appBar: AppBar(
              title: Text(AppLocalizations.of(context)!.login),
            ),
            body: SafeArea(
              child: Padding(
                padding: const Margin.all(UI.padding),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      TextInput(
                        label: AppLocalizations.of(context)!.email,
                        onValidate: Validators.email,
                        controller: _textEmailController,
                      ),
                      TextInput(
                        label: AppLocalizations.of(context)!.password,
                        onValidate: Validators.password,
                        controller: _textPasswordController,
                        isPassword: true,
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
    context.read<LoginBloc>().add(const LoginSignInGooglePressed());
  }

  void _submit(BuildContext context) {
    if (_formKey.currentState?.validate() == true) {
      String email = _textEmailController!.text;
      String password = _textPasswordController!.text;
      context.read<LoginBloc>().add(LoginSignInPressed(
            email: email,
            password: password,
          ));
    }
  }
}
