import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../presentation/widgets/info.dart';

class ToastService {
  static FToast? toast;

  static init(BuildContext context) {
    toast = FToast();
    toast?.init(context);
  }

  static showError(String text) {
    toast?.showToast(
      child: Info(
        text: text,
        type: InfoType.error,
      ),
      gravity: ToastGravity.TOP,
      toastDuration: const Duration(seconds: 222),
    );
  }
}
