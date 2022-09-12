class FieldValidator {
  static validateEmail(String email) {
    if (email.isEmpty) return 'Enter Email';

    bool emailValid = RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
        .hasMatch(email);
    if (!emailValid) {
      return "Enter Valid Email";
    }
    return null;
  }

  static validatePassword(String password) {
    if (password.isEmpty) return 'Enter Password';

    if (password.length < 7) {
      return "Password must be more than 6 charater";
    }
    return null;
  }
}
