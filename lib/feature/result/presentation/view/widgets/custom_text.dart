
import 'package:bmi_calculator/feature/result/data/manager/result_cubit/result_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomText extends StatelessWidget {
   CustomText({super.key});
  final List<String> msgList = [];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResultCubit, ResultState>(
      builder: (context, state) {
        return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              child: ListView(
                children:  [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                     state.msg1,
                      style:const TextStyle(fontSize: 14),
                    ),
                  ),
                  Padding(
                    padding:const EdgeInsets.only(top: 10),
                    child: Text(
                      state.msg2,
                      style:const TextStyle(fontSize: 14),
                    ),
                  ),
                  Padding(
                    padding:const EdgeInsets.only(top: 10),
                    child: Text(
                      state.msg3,
                      style:const TextStyle(fontSize: 14),
                    ),
                  ),
                  Padding(
                    padding:const EdgeInsets.only(top: 10),
                    child: Text(
                     state.msg4,
                      style:const TextStyle(fontSize: 14),
                    ),
                  ),
                  Padding(
                    padding:const EdgeInsets.only(top: 10),
                    child: Text(
                      state.msg5,
                      style:const TextStyle(fontSize: 14),
                    ),
                  ),
                  Padding(
                    padding:const EdgeInsets.only(top: 10),
                    child: Text(
                      state.msg6,
                      style:const TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          );
      },
    );
  }
}
