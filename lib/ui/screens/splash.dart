import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager/ui/screens/sign_in.dart';
import 'package:task_manager/ui/utils/asset_paths.dart';
import 'package:task_manager/ui/widgets/background.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  static const name = '/';

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    _moveToNextScreen();
  }

  Future<void> _moveToNextScreen() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacementNamed(context, '/sign-in');

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(child:
          Center(
          child: SvgPicture.asset(AssetPaths.logoSvg)
        ),
      ),
    );
  }
}
