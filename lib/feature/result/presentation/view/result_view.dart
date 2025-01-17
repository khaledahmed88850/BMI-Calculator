import 'package:bmi_calculator/feature/result/presentation/view/widgets/result_view_body.dart';
import 'package:flutter/material.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key, required this.result});
  final double result;


  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: ResultViewBody(result: result)),
    );
  }
}
