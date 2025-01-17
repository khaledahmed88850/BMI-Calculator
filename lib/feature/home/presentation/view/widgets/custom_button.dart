import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.icon, this.onPressed,
  });
  final void Function()? onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.05,
      width: MediaQuery.of(context).size.width * 0.1,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: kPrimaryColor),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon),
        color: Colors.black,
      ),
    );
  }
}
