class TValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Email is required";
    }

    // Regular expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address.';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password is required";
    }

    //Check for minimum password length
    if (value.length < 6) {
      return "Password must be at least 6 characters long";
    }

    // Check for uppercase letters
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return "Password must contain at least one uppercase letter.";
    }

    // Check for number
    if (!value.contains(RegExp(r'[0-9]'))) {
      return "Password must contain at least one number.";
    }

    // Check for special characters
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?:{}|<>]'))) {
      return "Password must contain at least one special characters.";
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return "Phone number is required";
    }

// Regular expression for Syrian phone number validation (9-digit format, starting with 9)
    final phoneRegExp = RegExp(r'^(09\d{8}|9\d{8})$');

    if (!phoneRegExp.hasMatch(value)) {
      return "Invalid phone number format (should be 09XXXXXXXX or 9XXXXXXXX).";
    }
    return null;
  }

  // Add more custom validators as needed for your specific requirements.
}
