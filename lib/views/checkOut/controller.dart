import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/views/addressCardsView/models/get_address_model.dart';
import 'package:shoplaza/views/checkOut/states.dart';

class CheckOutController extends Cubit<CheckOutStates> {
  CheckOutController() : super(CheckOutInit());

  static CheckOutController of(context)=> BlocProvider.of(context);

  Address address;

  void selectAddress(Address value){
    address = value;
    emit(CheckOutInit());
  }

}