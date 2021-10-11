import 'package:flutter/material.dart';
import 'package:shoplaza/views/addAddressView/cubits/addAddress_cubit.dart';
import 'package:shoplaza/widgets/custom_text_form_field.dart';

class Fields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final addAddressController = AddAddressController.of(context);
    return Form(
      key: AddAddressController.of(context).formKey,
      child: ListView(
        padding: EdgeInsets.all(20),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          CustomTextFormField(
            labelText: 'Name',
            controller: addAddressController.nameController,
          ),
          CustomTextFormField(
            labelText: 'City',
            controller: addAddressController.cityController,
          ),
          CustomTextFormField(
            labelText: 'Region',
            controller: addAddressController.regionController,
          ),
          CustomTextFormField(

            labelText: 'Details',
            controller: addAddressController.detailsController, type: null,
          ),
          CustomTextFormField(
            labelText: 'Notes',
            controller: addAddressController.notesController,
          ),
        ],
      ),
    );
  }
}
