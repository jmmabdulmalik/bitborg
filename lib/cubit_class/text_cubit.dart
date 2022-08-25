import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';


class TextCubit extends Cubit<int> {
  TextCubit(int intialstate) : super(intialstate);

  getIndex({required index}){
    emit(index);
  }
getLastPage({required lastPage}){
    emit(lastPage);
}
}
