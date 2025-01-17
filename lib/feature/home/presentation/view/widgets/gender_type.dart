import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class GenderType extends StatelessWidget {
  const GenderType({super.key, required this.index, required this.color});
  final int index;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 13),
      width: MediaQuery.of(context).size.width * 0.45,
      height: MediaQuery.of(context).size.height * 0.26,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            index == 0 ? Icons.male : Icons.female,
            color: kPrimaryColor,
            size: 48,
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            index == 0 ? 'Male' : 'Female',
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
