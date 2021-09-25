// import 'package:flutter/material.dart';
// import 'package:shoplaza/views/home/cubit/category_controller.dart';
//
// class CategoryItem extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     final category = CategoryController.of(context).categoryModel.data;
//
//     return  Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Image.network( category.data[index].image ,
//           width: 90,
//           height: 90,
//           fit: BoxFit.contain,
//         ),
//         Padding(
//           padding: const EdgeInsets.all(15),
//           child: Text(
//             'electronic',
//             style: TextStyle(fontSize: 20),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(35),
//           child: Icon(
//             Icons.arrow_forward_ios_outlined,
//             color: Colors.grey,
//             size: 20,
//           ),
//         )
//       ],
//     );
//   }
// }
//
