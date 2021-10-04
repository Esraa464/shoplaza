import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoplaza/views/aboutUs/cubits/controller.dart';
import 'package:shoplaza/views/aboutUs/states.dart';

class ExpansionTilee extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    // final aboutUs = AboutUsController.of(context).aboutUsModel.data;
    return BlocBuilder<AboutUsController, AboutUsStates>(
      builder: (context, state) => state is AboutUsLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(vertical: 40),
          itemCount:  AboutUsController.of(context).aboutUsModel.data.data.length,
          itemBuilder: (context, index) =>ExpansionTile(
            title: Text( AboutUsController.of(context).aboutUsModel.data.data[index].question),
            children: [
              Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text( AboutUsController.of(context).aboutUsModel.data.data[index].answer))
            ],
          )),
    );
  }
}
