import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stabrak/Models/Product.dart';

class ProductSelectScreen extends StatefulWidget {
 ProductSelectScreen({super.key,
 required this.product
 });
  Product product;
  @override
  State<ProductSelectScreen> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<ProductSelectScreen> {
  int index=0;
  int indexColor=0;
  int count =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding:  EdgeInsets.only(
          left: 30.w,
          
          top: 20.h,
        ),
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          height: 80.h,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 2, 27, 47),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0.r),
              topRight: Radius.circular(20.0.r),
            ),
          ),
          child: Row(children: [
            SizedBox(width: 10.w),
            IconButton(onPressed: (){
              setState(() {
                count--;
              });
            }, icon: Icon(Icons.plus_one,size: 20.sp,color: Colors.white,)),
            Container(
              width: 50.w,
              height: 40.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0.r),
              ),
              child: Center(
                child: Text(count.toString(),style: TextStyle(
                  fontSize: 25.sp,
                ),),
              ),
            ),
            IconButton(onPressed: (){
              setState(() {
                count++;
              });
            }, icon: Icon(Icons.plus_one,size: 20.sp,color: Colors.white,)),
            SizedBox(width: 20.w,),
            Container(
              width: 150.w,
              height: 40.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0.r),
                color: Colors.white,
              ),
              child: Center(child: Text("Add To Cart",style: TextStyle(
                fontSize: 20.sp
              ),)),
            )
          ],),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 30.h,),
          if(index==0)...{
            Container(
            width: MediaQuery.sizeOf(context).width,
            height: 270.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: new NetworkImage(widget.product.productImag1!),
                fit: BoxFit.fill,
               ),
            ),
            child: Column(children: [
              SizedBox(height: 20.h,),
              Row(children: [
                SizedBox(width: 20.w,),
                CircleAvatar(
                  radius: 15.0.r,
                  backgroundColor: Colors.white,
                  child: IconButton(onPressed: (){Navigator.pop(context);},icon:Icon(Icons.arrow_back,color: Colors.black,size: 20.sp,) ),
                ),
              ],)
            ]),
          ),
          },
           if(index==1)...{
            Container(
            width: MediaQuery.sizeOf(context).width,
            height: 270.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: new NetworkImage(widget.product.productImag2!),
                fit: BoxFit.fill,
               ),
            ),
            child: Column(children: [
              SizedBox(height: 20.h,),
              Row(children: [
                SizedBox(width: 20.w,),
                CircleAvatar(
                  radius: 15.0.r,
                  backgroundColor: Colors.white,
                  child: IconButton(onPressed: (){Navigator.pop(context);},icon:Icon(Icons.arrow_back,color: Colors.black,size: 20.sp,) ),
                ),
              ],)
            ]),
          ),
          },
           if(index==2)...{
            Container(
            width: MediaQuery.sizeOf(context).width,
            height: 270.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: new NetworkImage(widget.product.productImag3!),
                fit: BoxFit.fill,
               ),
            ),
            child: Column(children: [
              SizedBox(height: 20.h,),
              Row(children: [
                SizedBox(width: 20.w,),
                CircleAvatar(
                  radius: 15.0.r,
                  backgroundColor: Colors.white,
                  child: IconButton(onPressed: (){Navigator.pop(context);},icon:Icon(Icons.arrow_back,color: Colors.black,size: 20.sp,) ),
                ),
              ],)
            ]),
          ),
          },
          SizedBox(height: 20.h,),
          Row(children: [
            SizedBox(width: 50.w,),
            GestureDetector(
              onTap: (){
                setState(() {
                  index=0;
                });
              },
              child: Container(
                width: 70.w,
                height: 70.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0.r),
                  image: DecorationImage(
                    image: NetworkImage(widget.product.productImag1!),
                    fit: BoxFit.fill,
                  )
                ),
              ),
            ),
             SizedBox(width: 30.w,),
            GestureDetector(
              onTap: (){
                setState(() {
                  index=1;
                });
              },
              child: Container(
                width: 70.w,
                height: 70.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0.r),
                  image: DecorationImage(
                    image: NetworkImage(widget.product.productImag2!),
                    fit: BoxFit.fill,
                  )
                ),
              ),
            ),
             SizedBox(width: 30.w,),
            GestureDetector(
              onTap: (){
                setState(() {
                  index=2;
                });
                
              },
              child: Container(
                width: 70.w,
                height: 70.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0.r),
                  image: DecorationImage(
                    image: NetworkImage(widget.product.productImag3!),
                    fit: BoxFit.fill,
                  )
                ),
              ),
            ),
          ],),
          SizedBox(height: 30.h,),
          Row(
            children: [
              SizedBox(width: 20.w,),
              Container(
                width: 150.w,
                child: Text(widget.product.productName!,style: TextStyle(
                  color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.bold
                ),),
              ),
            ],
          ),
          SizedBox(height: 30.h,),
          Row(
            children: [
              SizedBox(width: 20.w,),
              Text(widget.product.productprice.toString()+" \$",style: TextStyle(
                color: Colors.black,fontSize: 25.sp,fontWeight: FontWeight.bold
              ),),
              SizedBox(width: 10.w,),
              Text(widget.product.productoldprice.toString() +" \$",style: TextStyle(
                color: Colors.grey,fontSize: 15.sp,fontWeight: FontWeight.bold
              ),),
            ],
          ),
           SizedBox(height: 20.h,),
           Row(children: [
            SizedBox(width: 20.w,),
            GestureDetector(
              onTap: (){
                setState(() {
                  indexColor=0;
                });
              },
              child: Container(
                height: 50.h,
                width: 50.w,
                decoration: BoxDecoration(
                  color: widget.product.productColor1,
                  borderRadius: BorderRadius.circular(10.0.r),
                ),
              ),
            ),
              SizedBox(width: 20.w,),
            GestureDetector(
               onTap: (){
                setState(() {
                  indexColor=1;
                });
              },
              child: Container(
                height: 50.h,
                width: 50.w,
                     decoration: BoxDecoration(
                  color: widget.product.productColor2,
                  borderRadius: BorderRadius.circular(10.0.r),
                ),
                       ),
            ),
              SizedBox(width: 20.w,),
            GestureDetector(
               onTap: (){
                setState(() {
                  indexColor=2;
                });
              },
              child: Container(
                height: 50.h,
                width: 50.w,
                decoration: BoxDecoration(
                  color: widget.product.productColor3,
                  borderRadius: BorderRadius.circular(10.0.r),
                ),
              ),
            ),
           ],),          
           SizedBox(height: 20.h,),
          Row(
            children: [
              SizedBox(width: 20.w,),
              Container(
                width: 250.w,
                child: Text(widget.product.productDescreption!,style: TextStyle(
                  color: Colors.black,fontSize: 13.sp,fontWeight: FontWeight.bold
                ),),
              ),
            ],
          ),
          SizedBox(height: 100.h,),
        ]),
      ),
    );


  }

 }