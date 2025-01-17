import 'package:bmi_calculator/core/widgets/custom_app_bar.dart';
import 'package:bmi_calculator/feature/home/presentation/view/widgets/submit_button.dart';
import 'package:bmi_calculator/feature/result/presentation/view/widgets/bmi_result.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'custom_text.dart';

class ResultViewBody extends StatelessWidget {
  const ResultViewBody({super.key, required this.result});
  final double result;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       const CustomAppBar(),
       const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Result',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        BMIResult(
          result: result,
        ),
        Padding(
          padding:const EdgeInsets.only(left: 20, bottom: 10),
          child: Text(
            BMIResult(result: result).finalResult(),
            style:const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
        Expanded(child: CustomText()),
        
        Padding(
          padding:const EdgeInsets.only(top: 10,),
          child: SubmitButton(
              title: 'ReCalculate',
              onPressed: () {
                GoRouter.of(context).pop();
              }),
        ),
      ],
    );
  }
}
