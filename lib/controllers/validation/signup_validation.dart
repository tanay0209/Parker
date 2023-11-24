class SignupValidation {
  String? passwordValidator(String? password) {
    if (password!.isEmpty ||
        !RegExp(r"^(?=.*?[A-Z])(?=.*?[0-9])(?=.*?).{8,}$").hasMatch(password)) {
      return 'Min. eight character,at least 1 uppercase & 1 number';
    } else {
      return null;
    }
  }

  String? emailValidator(String? email) {
    if (email!.isEmpty ||
        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(email)) {
      return 'Enter a valid email address';
    } else {
      return null;
    }
  }

  String? emptyFieldValidator(String? fieldData) {
    if (fieldData!.isEmpty) {
      return 'This field cannot be empty';
    } else {
      return null;
    }
  }
}
