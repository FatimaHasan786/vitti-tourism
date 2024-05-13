class Validator {
  static String? validateEmail(String? value) {
    if (value == null ||value.isEmpty) {
      return 'Please enter a Email Address';
    }
    bool emailValid =
        RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value);
    if (!emailValid) {
      return 'Please enter a Valid Email Address';
    }

    return null;
    
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a password';
    }
    if (value.length < 8) {
      return 'password must be at least 8 characters';
    }
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'password must contain at least one UpperCase letter';
    }
    if (!value.contains(RegExp(r'[a-z]'))) {
      return 'password must contain at least one LowerCase letter';
    }
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'password must contain at least one digit';
    }
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'password must contain at least one special character';
    }

    return null;
  }
}
