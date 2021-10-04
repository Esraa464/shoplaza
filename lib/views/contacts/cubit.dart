
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/const/variables.dart';
import 'package:shoplaza/views/contacts/model.dart';
import 'package:shoplaza/views/contacts/states.dart';

class ContactController extends Cubit<ContactStates> {
  ContactController() : super(ContactInitial());

  static ContactController of(context) => BlocProvider.of(context);

  ContactsModel contactsModel;

  Future<void> getData() async {
    emit(ContactLoading());
    try{
      final response = await Dio().get(
        BASE_URL + 'contacts',
        // options: dioOptions
      );
      contactsModel = ContactsModel.fromJson(response.data);
      print(response.data);
    }catch(e){
      print(e);
    }
    emit(ContactInitial());
  }

}
