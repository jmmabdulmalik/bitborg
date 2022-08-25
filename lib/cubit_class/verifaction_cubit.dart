import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';


class VerifactionCubit extends Cubit<int> {
  VerifactionCubit(int intial) : super(intial);

  getFieldIndex({required mystate}){
    emit(mystate);
  }
}
