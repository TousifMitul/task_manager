import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/sign_in.dart';
import 'package:task_manager/ui/screens/verifyotp.dart';
import 'package:task_manager/ui/widgets/background.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  static const name = '/forgot-password';

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            SizedBox(height: 60),
            Text(
              'Your Email Address',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              'A 6 digit verification OPT will be sent to your E-mail address',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            SizedBox(height: 8),
            TextFormField(decoration: InputDecoration(hintText: 'Email')),
            SizedBox(height: 8),
            FilledButton(
              onPressed: _onTapSubmit,
              child: Icon(Icons.arrow_circle_right_outlined),
            ),
            SizedBox(height: 24),
            Center(
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  text: 'Have account?  ',
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
            ),
          ],
        ),
      ),
    );
  }

  void _onTapSignIn() {
    Navigator.pushNamed(context, SignIn.name);}
  void _onTapSubmit(){
    Navigator.pushNamed(context, VerifyOTP.name);
  }
}
