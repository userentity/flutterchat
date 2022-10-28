import 'package:flutter_easyloading/flutter_easyloading.dart';

class LoadingService {
  static show() {
    EasyLoading.show(
      status: "Loading...",
      dismissOnTap: false,
      maskType: EasyLoadingMaskType.black,
    );
  }

  static pop() {
    EasyLoading.dismiss();
  }
}
