import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'result_state.dart';

class ResultCubit extends Cubit<ResultState> {
  ResultCubit() : super(ResultInitial());
  void checkResult ({required double result})
  {
     if(result < 18.5)
    {
     emit(ResultUnderWeight());
    }
    else if(result >= 18.5 && result < 25 )
    {
     emit(ResultNormalWeight());
    }
    else if(result >= 25 && result < 30)
    {
      emit(ResultOverWeight());
    }
    else if(result >= 30 && result < 35)
    {
      emit(ResultClass1());
    }
    
    else if(result >= 35 && result < 40)
    {
      emit(ResultClass2());
    }
    
    else if(result >= 40 )
    {
     emit(ResultClass3());
    }
  }
}
