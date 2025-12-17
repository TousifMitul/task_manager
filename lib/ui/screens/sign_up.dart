import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/sign_in.dart';
import 'package:task_manager/ui/widgets/background.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  static const name = '/sign-up';

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8,
                children: [
                  SizedBox(height: 60),
                  Text(
                    'Join With Us',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    controller: _emailController,
                    validator: (String? value) {
                      if (value?.trim().isEmpty ?? true) {
                        return 'Please enter your email';
                      }
                      if (EmailValidator.validate(value!) == false) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
                    decoration: InputDecoration(hintText: 'Email'),
                  ),
                  TextFormField(
                    controller: _firstNameController,
                    validator: (String? value) {
                      if (value?.trim().isEmpty ?? true) {
                        return 'Please enter your first name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(hintText: 'First Name'),
                  ),
                  TextFormField(
                    controller: _lastNameController,
                    validator: (String? value) {
                      if (value?.trim().isEmpty ?? true) {
                        return 'Please enter your last name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(hintText: 'Last Name'),
                  ),
                  TextFormField(
                    controller: _mobileController,
                    validator: (String? value) {
                      if (value?.trim().isEmpty?? true) {
                        return 'Please enter your mobile number';
                      }
                      return null;
                    },
                    decoration: InputDecoration(hintText: 'Mobile'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Password'),
                  ),
                  FilledButton(
                    onPressed: _onTapSignUp,
                    child: Icon(Icons.arrow_circle_right_outlined),
                  ),
                  SizedBox(height: 24),
                  Center(
                    child: Column(
                      children: [
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                            text: 'Already have an account?  ',
                            children: [
                              TextSpan(
                                text: 'Sign In',
                                style: TextStyle(color: Colors.blue),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = _onTapSignIn,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTapSignIn() {
    Navigator.pushNamed(context, SignIn.name);
  }

  void _onTapSignUp() {}
}
