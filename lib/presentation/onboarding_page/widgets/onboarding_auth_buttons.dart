import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../core/const/ui.dart';
import '../../widgets/gradients.dart';
import '../../widgets/gradient_button.dart';
import '../../widgets/shader_gradient.dart';

class OnboardingAuthButtons extends StatelessWidget {
  const OnboardingAuthButtons({
    Key? key,
    required this.onLoginTap,
    required this.onRegisterTap,
  }) : super(key: key);

  final VoidCallback onRegisterTap;

  final VoidCallback onLoginTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GradientButton(
          onPressed: onRegisterTap,
          text: AppLocalizations.of(context)!.createAccount,
        ),
        const SizedBox(
          height: UI.padding,
        ),
        TextButton(
          onPressed: onLoginTap,
          child: ShaderGradient(
            gradient: gradientBlueLinear,
            child: Text(AppLocalizations.of(context)!.alreadyHaveAccount),
          ),
        ),
        const SizedBox(
          height: UI.padding,
        ),
      ],
    );
  }
}
