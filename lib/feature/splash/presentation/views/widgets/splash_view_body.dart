import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/core/utils/router_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.55,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Animate(
            effects: const [
              FlipEffect(
                  duration: Duration(milliseconds: 550),
                  delay: Duration(milliseconds: 150)),
            ],
            child: Image.asset('assets/images/Logo.png',
                scale: 20, color: kPrimaryColor),
          ),
          const SizedBox(
            height: 18,
          ),
          Animate(
            effects: const [
              FadeEffect(
                delay: Duration(milliseconds: 100),
              ),
              SlideEffect(
                begin: Offset(0, 0.5),
                end: Offset(0, 0),
                duration: Duration(milliseconds: 700),
              )
            ],
            onComplete: (controller) => GoRouter.of(context).push(AppRouters.kHomeView),
            child: const Text(
              'BMI Calculator ',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
