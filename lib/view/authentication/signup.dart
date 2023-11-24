import 'package:flutter/material.dart';
import 'package:parker/common/constants.dart';
import 'package:parker/common/widgets/primary_button.dart';
import 'package:parker/common/widgets/text_field.dart';
import 'package:parker/controllers/validation/signup_validation.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  SignupValidation signupValidation = SignupValidation();
  final _formKey = GlobalKey<FormState>();
  List<String> options = <String>['User', 'Owner'];
  late String dropdownValue = options[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Create an account',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Parking made easy!',
              style: TextStyle(
                  fontWeight: FontWeight.w400, color: Colors.grey.shade500),
            ),
            const SizedBox(
              height: 30,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  InputField(
                    label: 'Username',
                    hintText: 'Enter your username',
                    hidden: false,
                    controller: emailController,
                    validatorFunction: signupValidation.emptyFieldValidator,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  InputField(
                    label: 'Email Address',
                    hintText: 'Enter your email',
                    hidden: false,
                    controller: emailController,
                    validatorFunction: signupValidation.emailValidator,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  InputField(
                    label: 'Password',
                    hintText: 'Please enter your password',
                    hidden: true,
                    controller: passwordController,
                    validatorFunction: signupValidation.passwordValidator,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: width! / 4,
                    child: DropdownButton<String>(
                      padding: const EdgeInsets.all(6),
                      value: dropdownValue,
                      alignment: AlignmentDirectional.center,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(
                        color: Colors.deepPurple,
                      ),
                      // underline: Container(
                      //   height: 2,
                      //   color: Colors.deepPurpleAccent,
                      // ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          dropdownValue = value!;
                        });
                      },
                      items:
                          options.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const PrimaryButton(text: 'Sign Up')
          ],
        ),
      ),
    );
  }
}
