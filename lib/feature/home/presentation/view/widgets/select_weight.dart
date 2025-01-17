import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/feature/home/data/manager/weight_age_cubit/weight_age_cubit.dart';
import 'package:bmi_calculator/feature/home/presentation/view/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SelectWeight extends StatelessWidget {
  const SelectWeight({super.key,});
 

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeightAgeCubit, WeightState>(
      builder: (context, state) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width * 0.45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: kSecondaryColor,
          ),
          child: Column(
            children: [
             const Padding(
                padding:  EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Weight',
                  style:  TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w800),
                ),
              ),
              Padding(
                padding:const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:const EdgeInsets.only(right: 16),
                      child: CustomButton(
                        onPressed: () {
                          BlocProvider.of<WeightAgeCubit>(context).substract(type: 'weight');
                        },
                        icon: FontAwesomeIcons.minus,
                      ),
                    ),
                    Text(
                      "${BlocProvider.of<WeightAgeCubit>(context).weight}",
                      style:const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding:const EdgeInsets.only(left: 16),
                      child: CustomButton(
                       onPressed: () {  BlocProvider.of<WeightAgeCubit>(context).add(type: 'weight');},
                        icon: FontAwesomeIcons.plus,
                      ),
                    ),
                  ],
                ),
              ),
             const Text(
                'Kg',
                style:  TextStyle(fontSize: 16),
              )
            ],
          ),
        );
      },
    );
  }
}
