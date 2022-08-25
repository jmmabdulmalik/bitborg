import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

class CheckBoxCubit1 extends Cubit<bool> {
  CheckBoxCubit1(bool initialState) : super(initialState);

  getcheckBox1({required myState}){
    emit(myState);
  }
}
class CheckBoxCubit2 extends Cubit<bool>{
  CheckBoxCubit2(bool initialState) : super(initialState);

  getcheckBox2({required mystate}){
    emit(mystate);
  }

}
class Diemand extends Cubit<bool>{
  Diemand(bool initialState) : super(initialState);

  getdimand({required mystate}){
    emit(mystate);
  }

}