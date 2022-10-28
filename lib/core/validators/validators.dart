import 'package:validators/validators.dart';

class Validators {
  static String? name(String? text) {
    if (text == null || text.isEmpty) return "Can't be empty";
    return null;
  }

  static String? email(String? text) {
    if (text == null || text.isEmpty) return "Can't be empty";
    if (!isEmail(text)) {
      return "Invalid Email";
    }
    return null;
  }

  static String? password(String? text) {
    if (text == null || text.length < 8) {
      return "Must have at least 8 characters";
    }
    return null;
  }
}
