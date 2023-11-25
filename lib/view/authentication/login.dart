import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parker/common/widgets/primary_button.dart';
import 'package:parker/common/widgets/text_field.dart';
import 'package:parker/controllers/validation/signup_validation.dart';
import 'package:parker/routes/route_functions.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  SignupValidation signupValidation = SignupValidation();
  final _formKey = GlobalKey<FormState>();
  RoutingFunctions routeFunctions = RoutingFunctions();

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
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/images/Logo.png',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Hi, Welcome Back!',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Hello again, you've been missed",
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
                      label: 'Email',
                      hintText: 'Enter your email',
                      hidden: false,
                      controller: emailController,
                      validatorFunction: signupValidation.emptyFieldValidator,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    InputField(
                      label: 'Password',
                      hintText: 'Enter your password',
                      hidden: false,
                      controller: passwordController,
                      validatorFunction: signupValidation.passwordValidator,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              PrimaryButton(
                text: 'Log in',
                onTap: () => routeFunctions.goToLandingPage(
                  context,
                  _formKey,
                  emailController.text,
                  passwordController.text,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.toNamed('/signup');
                    },
                    child: const Text(
                      'Sign up!',
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
