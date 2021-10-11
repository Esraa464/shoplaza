import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shoplaza/const/variables.dart';
import 'package:shoplaza/views/addressCardsView/models/get_address_model.dart';
import 'package:shoplaza/views/addressCardsView/states.dart';

class AddressController extends Cubit<AddressStates> {
  AddressController(this.isSelectable) : super(AddressLoading());

  final bool isSelectable;
  static AddressController of(context) => BlocProvider.of(context);
  GetAddressModel getAddressModel;

  Future<void> getAddress() async {
    emit(AddressLoading());
    try {
      final response = await Dio().get(
        BASE_URL + 'addresses',
        options: dioOptions,
      );
      getAddressModel = GetAddressModel.fromJson(response.data);
      print(response.data);
      print('esraa');
    } catch (e) {
      print(e);
    }
    emit(AddressInitial());
  }

  Future<void> removeFromCards(int cardId) async {
    getAddressModel.data.address.removeWhere((element) => element.id == cardId);
    emit(AddressInitial());
    final response = await Dio().delete(
      BASE_URL + 'addresses/$cardId',
      options: dioOptions,
    );
    print(response.data);
    // getAddressModel = GetAddressModel.fromJson(response.data);
    emit(AddressInitial());
    Fluttertoast.showToast(
        msg: 'Deleted Successfully',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 20.0);
  }
}
