import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:geek_app/app/core/common/constants/app_assets.dart';
import 'package:geek_app/app/core/common/extensions/context_extension.dart';
import 'package:geek_app/app/core/common/extensions/widget_extension.dart';
import 'package:geek_app/app/modules/splash/splash_service.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  SplashService service = SplashService();
  @override
  void initState() {
    service.navigate(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: Stack(
          children: [
            ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaY: 6, sigmaX: 10),
              child: Image.asset(
                AppAssets.images.background,
                width: context.width,
                fit: BoxFit.cover,
                height: context.height,
              ),
            ).hero('background'),
            Center(
              child: SizedBox(
                child: Image.asset(
                  AppAssets.images.logo,
                  width: 147,
                ).hero('logo'),
              ).animate().fade(),
            ),
          ],
        ),
      ),
    );
  }
}
