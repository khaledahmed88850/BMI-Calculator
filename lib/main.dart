import 'package:bmi_calculator/core/utils/router_config.dart';
import 'package:bmi_calculator/feature/home/data/manager/gender_cubit/gender_cubit.dart';
import 'package:bmi_calculator/feature/home/data/manager/weight_age_cubit/weight_age_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => WeightAgeCubit(),
                ),
                BlocProvider(
                  create: (context) => GenderCubit(),
                )
              ],
      child: MaterialApp.router(
        routerConfig: AppRouters.routers  ,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        
      
      ),
    );
  }
}