import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stabrak/Models/CategoryModel.dart';
// ignore: must_be_immutable
class CategoryWidget extends StatefulWidget {
   CategoryWidget({super.key,
   required this.category
  });
  CategoryModel category;
  @override
  State<CategoryWidget> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
    width: 100.w,
    height: 100.h,
    child: Column(children: [
      Container(
        width: 100.w,
        height: 60.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0.r),
          image: DecorationImage(image: NetworkImage(widget.category.image),
          fit: BoxFit.fill,
          ),
        ),
       
      ),
      SizedBox(height: 5.h,),
      Text(widget.category.name,style: TextStyle(
        color: Colors.black,fontSize: 13.sp,fontWeight: FontWeight.bold
      ),)
    ],),
  );
    
    }
 }
