import 'package:flutter/material.dart';
import 'package:shoplaza/views/editAddress/cubit.dart';
import 'package:shoplaza/widgets/custom_text_form_field.dart';

class EditAddressFields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final editAddressController = EditAddressController.of(context);
    return Form(
      key: EditAddressController.of(context).formKey,
      child: ListView(
        padding: EdgeInsets.all(20),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          CustomTextFormField(
            labelText: 'Name',
            controller: editAddressController.nameController,
          ),
          CustomTextFormField(
            labelText: 'City',
            controller: editAddressController.cityController,
          ),
          CustomTextFormField(
            labelText: 'Region',
            controller: editAddressController.regionController,
          ),
          CustomTextFormField(
            labelText: 'Details',
            controller: editAddressController.detailsController,
          ),
          CustomTextFormField(
            labelText: 'Notes',
            controller: editAddressController.notesController,
          ),
        ],
      ),
    );
  }
}
