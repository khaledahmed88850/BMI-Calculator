import 'package:bloc/bloc.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'gender_state.dart';

class GenderCubit extends Cubit<GenderState> {
  GenderCubit() : super(GenderInitial());
  int element = -1;
  void fetch( int index) {
    element =index;
    emit(GenderSuccess());
  }
  
  setColor(int index) {
    if (element == index)
    {
      return const Color.fromARGB(255, 78, 127, 59);
    }
    else
    {
      return kSecondaryColor;
    }
  }
}
