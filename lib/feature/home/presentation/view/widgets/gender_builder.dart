import 'package:bmi_calculator/feature/home/data/manager/gender_cubit/gender_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'gender_type.dart';

class GenderBuilder extends StatelessWidget {
  const GenderBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenderCubit, GenderState>(
      builder: (context, state) {
        return ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                BlocProvider.of<GenderCubit>(context).fetch(index);
              },
              child: GenderType(
                color: BlocProvider.of<GenderCubit>(context).setColor(index),
                index: index,
              ),
            );
          },
        );
      },
    );
  }
}
