import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/sign_in.dart';
import 'package:task_manager/ui/screens/verifyotp.dart';
import 'package:task_manager/ui/widgets/background.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  static const name = '/reset-password';

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
              'Reset Password',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              'Minimum length of password should be more than 8 letters',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            SizedBox(height: 8),
            TextFormField(decoration: InputDecoration(hintText: 'New Password')),
            TextFormField(decoration: InputDecoration(hintText: 'Confirm Password')),
            SizedBox(height: 8),
            FilledButton(
              onPressed: _onTapConfirm,
              child: Text('Confirm')),
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
    Navigator.pushNamedAndRemoveUntil(context, SignIn.name,(predicate)=> false);}
  void _onTapConfirm(){}
}
