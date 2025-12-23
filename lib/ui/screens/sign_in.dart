import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/navholder.dart';
import 'package:task_manager/ui/screens/sign_up.dart';
import 'package:task_manager/ui/widgets/background.dart';

import 'forgot_password.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  static const name = '/sign-in';

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Background(
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
                'Get Started With',
                style: Theme.of(context).textTheme.titleLarge,
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
                  decoration: InputDecoration(hintText: 'Email')),
              TextFormField(
                  obscureText: true,
                  controller: _passwordController,
                  validator: (String? value) {
                    if (value?.isEmpty ?? true) {
                      return 'Please enter your password';
                    }
                    if (value!.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  },
                  decoration: InputDecoration(hintText: 'Password')),
              FilledButton(
                onPressed: _onTapSignIn,
                child: Icon(Icons.arrow_circle_right_outlined),
              ),
              SizedBox(height: 24),
              Center(
                child: Column(
                  children: [
                    TextButton(
                      onPressed: _onTapForgotPassword,
                      child: Text('Forgot Password'),
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                        text: 'Don\'t have an account?  ',
                        children: [
                          TextSpan(
                            text: 'Sign Up',
                            style: TextStyle(color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap = _onTapSignUp,
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
    );
  }

  void _onTapSignIn() {
    Navigator.pushReplacementNamed(context, NavHolder.name);
  }

  void _onTapForgotPassword() {
    Navigator.pushNamed(context, ForgotPassword.name);
  }

  void _onTapSignUp() {
    Navigator.pushNamed(context, SignUp.name);
  }
}
