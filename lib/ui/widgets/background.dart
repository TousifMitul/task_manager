import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/asset_paths.dart';

class Background extends StatelessWidget {
  const Background({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
        SvgPicture.asset(AssetPaths.backgroundSvg,
        width: double.maxFinite,
        height: double.maxFinite,
        fit: BoxFit.cover,
      ),
          SafeArea(child: child)
        ]
      ),
    );
  }
}
