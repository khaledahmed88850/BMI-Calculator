import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

import 'select_unit_type.dart';

class SelectHeight extends StatefulWidget {
  const SelectHeight({super.key});
  static double currentSliderValue = 180;

  @override
  State<SelectHeight> createState() => _SelectHeightState();
}

class _SelectHeightState extends State<SelectHeight> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(14),
      height: MediaQuery.of(context).size.height * 0.23,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        color: kSecondaryColor,
      ),
      child: Column(
        children: [
         const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10, top: 10),
                child: Text(
                  'Height',
                  style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w800),
                ),
              ),
              Spacer(),
              SelectUnitType(
                text: 'Cm',
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            SelectHeight.currentSliderValue.round().toString(),
            style: const TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Slider(
            value: SelectHeight.currentSliderValue,
            max: 230,
            min: 140,
            divisions: 130,
            activeColor: const Color.fromARGB(72, 214, 252, 126),
            thumbColor: const Color.fromARGB(238, 214, 252, 126),
            onChanged: (value) {
              setState(() {
                SelectHeight.currentSliderValue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}



