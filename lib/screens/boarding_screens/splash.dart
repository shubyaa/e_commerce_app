import 'dart:async';
import 'package:e_commerce_app/theme/colors.dart';
import 'package:shimmer/shimmer.dart';
import 'package:e_commerce_app/screens/boarding_screens/onboarding1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => onBoarding())),
            });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Shimmer.fromColors(
          period: const Duration(seconds: 2),
          direction: ShimmerDirection.ttb,
          baseColor: Colors.white,
          highlightColor: themeOrange,
          child: SvgPicture.asset(
            'assets/res/Vector.svg',
            width: 104,
            height: 120,
          ),
        ),
      ),
    );
  }
}
