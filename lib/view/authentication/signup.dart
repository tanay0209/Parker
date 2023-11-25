import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parker/common/constants.dart';
import 'package:parker/common/widgets/primary_button.dart';
import 'package:parker/common/widgets/text_field.dart';
import 'package:parker/controllers/validation/signup_validation.dart';
import 'package:parker/routes/route_functions.dart';

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
    passwordController.dispose();
    usernameController.dispose();
    confirmPasswordController.dispose();
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  SignupValidation signupValidation = SignupValidation();
  final _formKey = GlobalKey<FormState>();
  List<String> options = <String>['USER', 'OWNER'];
  late String dropdownValue = options[0];
  RoutingFunctions routeFunctions = RoutingFunctions();

  String? confirmPasswordValidator(String? value) {
    if (value!.isEmpty || value != passwordController.text) {
      return 'Password does not match';
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
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
                      controller: usernameController,
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
                    InputField(
                      label: 'Confirm Password',
                      hintText: 'Re-enter your password',
                      hidden: true,
                      controller: confirmPasswordController,
                      validatorFunction: signupValidation.passwordValidator,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
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
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue = value!;
                          });
                        },
                        items: options
                            .map<DropdownMenuItem<String>>((String value) {
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
              PrimaryButton(
                text: 'Sign Up',
                onTap: () => routeFunctions.goToLoginPage(
                  context,
                  _formKey,
                  usernameController.text,
                  emailController.text,
                  passwordController.text,
                  dropdownValue,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.offAllNamed('/login');
                    },
                    child: const Text(
                      'Log In',
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
