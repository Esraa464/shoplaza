// import 'package:flutter/cupertino.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shoplaza/views/signUp/states/signUp_states.dart';
// import 'package:shoplaza/views/signUp/states/terms_status.dart';
//
// class TermsController extends Cubit<TermsStates> {
//   TermsController() : super(TermsInit());
//
//   static TermsController of(context) => BlocProvider.of(context);
//
//   bool isAgreed = false;
//  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
//
//   void agree(bool value) {
//     // if (isAgreed) return;
//     // isAgreed = true;
//     if (isAgreed) {
//       isAgreed = false;
//     } else {
//       isAgreed = true;
//     }
//     emit(TermsInit());
//   }
// }
