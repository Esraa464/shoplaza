import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/views/login/states/login_states.dart';

class LoginController extends Cubit<LoginStates>{
  LoginController() : super(LoginInitial());
  bool visible = true;

  bool isShown= true;
 static LoginController of(context)=>BlocProvider.of(context);
 void password(){
   visible=!visible;
   isShown=!isShown;
   emit(LoginVisible());
 }

}