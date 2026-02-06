import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:slice_app/feature/register/data/models/register_class.dart';
import 'package:slice_app/feature/register/data/repo/register_repo.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());


register (RegisterClass registerModel)async{
emit(RegisterLoadingInitial());
final Response=await RegisterRepo.register(registerModel);
if(Response is String){
  emit(RegisterErorrInitial()); 
}else{
  emit(RegisterSuccessInitial());
}

}


}
