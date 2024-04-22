import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30.h,),
            Container(
              child: 
              ListView.builder(
                itemCount: 10,
                physics:  NeverScrollableScrollPhysics(),
               shrinkWrap: true,
               itemBuilder: (context,index){
                return ListTile(
                  leading: Image(image: NetworkImage("https://www.digitalsilk.com/wp-content/uploads/2020/05/ecommerce-coronavirus-hero-image.png")),
                  title: Text("Item Name $index"),
                  subtitle:Text("subtitle $index") ,
                  trailing:IconButton(icon:Icon(Icons.remove),onPressed: (){
                  },)
                );
              }),
            ),
            SizedBox(height: 30.h,),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 4.h,
                color:Colors.black,
              ),
            ),
            Row(
              children: [
                SizedBox(width: 60.w,),
                Text("Total Order Price : ",style: TextStyle(
                  color: Colors.black,fontSize: 15.sp
                ),),
                SizedBox(width: 40.w,),
                Text("0",style: TextStyle(
                    color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.bold
                ),),
              ],
            ),
            SizedBox(height: 20.h,),
            Row(
              children: [
                SizedBox(width: 60.w,),
                Text("Tax : ",style: TextStyle(
                    color: Colors.black,fontSize: 15.sp
                ),),
                SizedBox(width: 40.w,),
                Text("0",style: TextStyle(
                    color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.bold
                ),),
              ],
            ),
            SizedBox(height: 20.h,),
            Row(
              children: [
                SizedBox(width: 60.w,),
                Text("Delivery : ",style: TextStyle(
                    color: Colors.black,fontSize: 15.sp
                ),),
                SizedBox(width: 40.w,),
                Text("0",style: TextStyle(
                    color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.bold
                ),),
              ],
            ),
            SizedBox(height: 30.h,),
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 4.h,
                color:Colors.black,
              ),
            ),
            SizedBox(height: 20.h,),
            Row(
              children: [
                SizedBox(width: 60.w,),
                Text("Total : ",style: TextStyle(
                    color: Colors.black,fontSize: 15.sp
                ),),
                SizedBox(width: 40.w,),
                Text("0",style: TextStyle(
                    color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.bold
                ),),
              ],
            ),
            SizedBox(height: 20.h,),
            Center(child: ElevatedButton(onPressed: (){

            },child: Text("confirm your order",style: TextStyle(),),style: ElevatedButton.styleFrom(
              primary: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.r)
              )
            ),),)
            ,SizedBox(height: 20.h,),
            Row(
              children: [
                SizedBox(width: 50.w,),
                Icon(Icons.cancel,color: Colors.black,),
                SizedBox(width: 5.w,),
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Cancel order",style: TextStyle(
                  fontSize: 12.sp,color: Colors.black
                ),)),
                SizedBox(width: 10.w,),
                Container(
                  width: 3.w,
                  height: 30.h,
                  color: Colors.black,
                ),
                SizedBox(width: 10.w,),
                Icon(Icons.save,color: Colors.black,),
                SizedBox(width: 5.w,),
                TextButton(onPressed: (){}, child: Text("keep the cart",style: TextStyle(
                    fontSize: 12.sp,color: Colors.black
                ),)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
