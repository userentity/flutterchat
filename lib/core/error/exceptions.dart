class SignUpUserEmptyException implements Exception {
  final message = "Registration Error";
  @override
  String toString() {
    return message;
  }
}

class SignUpEmailAlreadyInUseException implements Exception {
  final message = "Email Already In Use";
  @override
  String toString() {
    return message;
  }
}

class SignUpInvalidEmailException implements Exception {
  final message = "Invalid Email";
  @override
  String toString() {
    return message;
  }
}

class SignUpWeakPasswordException implements Exception {
  final message = "Weak Password";
  @override
  String toString() {
    return message;
  }
}

class SignUpCancelledException implements Exception {
  final message = "Register Cancelled";
  @override
  String toString() {
    return message;
  }
}

// SignIn

class SignInInvalidEmailException implements Exception {
  final message = "Invalid Email";
  @override
  String toString() {
    return message;
  }
}

class SignInInvalidCredentialsException implements Exception {
  final message = "Invalid Login Or Password";
  @override
  String toString() {
    return message;
  }
}

// User

class UserNotExistException implements Exception {
  final message = "User Not Exist";
  @override
  String toString() {
    return message;
  }
}

class ProfileUserNotExistException implements Exception {
  final message = "Profile User Not Exist";
  @override
  String toString() {
    return message;
  }
}
