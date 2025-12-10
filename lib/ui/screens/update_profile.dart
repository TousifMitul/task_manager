import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/sign_in.dart';
import 'package:task_manager/ui/widgets/background.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({super.key});

  static const String name = '/update-profile';

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
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
              TextFormField(decoration: InputDecoration(hintText: 'Email')),
              TextFormField(decoration: InputDecoration(hintText: 'First Name')),
              TextFormField(decoration: InputDecoration(hintText: 'Last Name')),
              TextFormField(decoration: InputDecoration(hintText: 'Mobile')),
              TextFormField(decoration: InputDecoration(hintText: 'Password')),
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
                                ..onTap = _onTapSignIn
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
  void _onTapSignIn(){Navigator.pushNamed(context,SignIn.name);}
  void _onTapSignUp(){}
}
