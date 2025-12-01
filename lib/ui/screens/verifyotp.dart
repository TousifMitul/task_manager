import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_manager/ui/screens/reset_password.dart';
import 'package:task_manager/ui/screens/sign_in.dart';
import 'package:task_manager/ui/widgets/background.dart';

class VerifyOTP extends StatefulWidget {
  const VerifyOTP({super.key});

  static const name = '/verify-otp';

  @override
  State<VerifyOTP> createState() => _VerifyOTPState();
}

class _VerifyOTPState extends State<VerifyOTP> {
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
              'OTP Verification',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              'A 6 digit verification OPT has been sent to your E-mail address',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            SizedBox(height: 8),
            PinCodeTextField(
              length: 6,
              obscureText: false,
              animationType: AnimationType.fade,
              keyboardType: TextInputType.number,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
                fieldHeight: 50,
                fieldWidth: 40,
                activeFillColor: Colors.white,
                inactiveFillColor: Colors.white,
                selectedFillColor: Colors.white,
                activeColor: Colors.white,
              ),
              animationDuration: Duration(milliseconds: 300),
              backgroundColor: Colors.transparent,
              enableActiveFill: true,
               appContext: context,
            ),
            SizedBox(height: 8),
            FilledButton(
              onPressed: _onTapVerify,
              child: Text('Verify'),
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
    Navigator.pushNamedAndRemoveUntil(context, SignIn.name,(predicate)=> false);}
  void _onTapVerify(){
    Navigator.pushNamed(context, ResetPassword.name);
  }
}
