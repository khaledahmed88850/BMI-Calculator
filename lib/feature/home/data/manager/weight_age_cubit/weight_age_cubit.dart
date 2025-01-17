import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'weight_age_state.dart';

class WeightAgeCubit extends Cubit<WeightState> {
  WeightAgeCubit() : super(WeightInitial());
  int weight = 80;
  int age = 25;
  void add({required String type})
  {
    if(type == 'weight' && weight <230)
    {
      weight +=1;
      emit(WeightSuccess());
    }
    else if (type =='age' && age <130)
    {
      age+=1;
      emit(WeightSuccess());
    }
  }
  void substract({required String type})
  {
    if(type == 'weight' && weight >30)
    {
      weight -=1;
      emit(WeightSuccess());
    }
    else if (type =='age' && age >1)
    {
      age-=1;
      emit(WeightSuccess());
    }
  }
}
