import 'package:flutter/material.dart';
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
          child: Image.asset(AssetPaths.logoPng)
        ),
      ),
    );
  }
}
