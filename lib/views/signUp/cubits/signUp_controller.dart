import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/views/signUp/states/signUp_states.dart';

class SignUpController extends Cubit<SignUpStates> {
  SignUpController() : super(TermsInit());

  static SignUpController of(context) => BlocProvider.of(context);

  bool isAgreed = false;

  void agree(bool value) {
     // if (isAgreed) return;
    // isAgreed = true;
    if (isAgreed) {
      isAgreed = false;
    } else {
      isAgreed = true;
    }
    emit(TermsInit());
  }
}
