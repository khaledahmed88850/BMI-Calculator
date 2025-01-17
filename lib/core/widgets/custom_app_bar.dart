import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: Row(
        children: [
          Image.asset(
            kLogoImage,
            color: kPrimaryColor,
            scale: 80,
          ),
          const SizedBox(
            width: 15,
          ),
          const Text(
            'BMI Calculator',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            width: 150,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
            ),
          )
        ],
      ),
    );
  }
}
