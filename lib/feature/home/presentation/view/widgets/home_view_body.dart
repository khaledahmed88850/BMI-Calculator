import 'package:bmi_calculator/core/utils/router_config.dart';
import 'package:bmi_calculator/core/widgets/custom_app_bar.dart';
import 'package:bmi_calculator/feature/home/data/manager/weight_age_cubit/weight_age_cubit.dart';
import 'package:bmi_calculator/feature/home/presentation/view/widgets/select_age.dart';
import 'package:bmi_calculator/feature/home/presentation/view/widgets/select_weight.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'gender_builder.dart';
import 'select_height.dart';
import 'submit_button.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(),
        const Expanded(
          child: GenderBuilder(),
        ),
        const SelectHeight(),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SelectWeight(),
            SelectAge(),
          ],
        ),
        SubmitButton(
          title: 'Calculate',
          onPressed: () {
            double bmiValue = (BlocProvider.of<WeightAgeCubit>(context).weight) /
                ((SelectHeight.currentSliderValue / 100) *
                    (SelectHeight.currentSliderValue / 100));
            if (bmiValue > 80) {
              ScaffoldMessenger.of(context).showSnackBar(
               const SnackBar(
                  content: Text(
                    'Please enter a valid height and weight',
                  ),
                  backgroundColor: Colors.white,
                ),
              );
            } else {
              GoRouter.of(context)
                  .push(AppRouters.kResultView, extra: bmiValue);
            }
          },
        ),
      ],
    );
  }
}
