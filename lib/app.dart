import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/add_new.dart';
import 'package:task_manager/ui/screens/forgot_password.dart';
import 'package:task_manager/ui/screens/navholder.dart';
import 'package:task_manager/ui/screens/reset_password.dart';
import 'package:task_manager/ui/screens/sign_in.dart';
import 'package:task_manager/ui/screens/sign_up.dart';
import 'package:task_manager/ui/screens/splash.dart';
import 'package:task_manager/ui/screens/verifyotp.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white,
          filled: true,
          hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
          contentPadding: EdgeInsets.symmetric(horizontal: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          fixedSize: Size.fromWidth(double.maxFinite),
          padding: EdgeInsets.symmetric(vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
      ),
        textTheme: TextTheme(
          titleLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          labelMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey)
        ),
        scaffoldBackgroundColor: Colors.green.shade50,
      ),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder> {
        Splash.name: (context) => Splash(),
        SignIn.name: (context) => SignIn(),
        SignUp.name: (context) => SignUp(),
        ForgotPassword.name: (context) => ForgotPassword(),
        VerifyOTP.name: (context) => VerifyOTP(),
        ResetPassword.name: (context) => ResetPassword(),
        NavHolder.name: (context) => NavHolder(),
        AddNew.name: (context) => AddNew(),
      },
      initialRoute: '/',
    );
  }
}
