import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:slice_app/feature/login/data/repo/login_rebo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Login ({required String email,required String password})async{
    emit(LoginLoadingInitial());
    final Response= await LoginRepo.Login(email: email, password: password);
    if(Response is String){
      emit(LoginErrorInitial());
    }else{
      emit(LoginSuccesInitial());
    }
  }
}
