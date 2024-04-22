import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stabrak/Models/Product.dart';
import 'package:stabrak/Screens/ProductScreen.dart';

class ProductScreen extends StatefulWidget {
   ProductScreen({super.key,
  required this.product
  });
  Product product;
  @override
  State<ProductScreen> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductSelectScreen(product: widget.product,))); 
      },
      child: Container(
          decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0.r),
                  border: Border.all(color: Colors.black,width: 2.w)
                ),
                            width: 180.w,
                            child: Column(
                              children: [
                                Container(
                                  width: 170.w,
                                  height: 110.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0.r),
                                      image: DecorationImage(
                                        image: new NetworkImage(widget.product.productImag1!),
                                        fit: BoxFit.fill,
                                      ),
                                  ),
                                ),
                                SizedBox(height: 10.h,),
                         Text(widget.product.productName!,style: TextStyle(
                                  fontSize: 20.sp
                                ),),
                                SizedBox(height: 10.h,),
                                Text(widget.product.productprice.toString()+"\$",style: TextStyle(
                                    color: Colors.orangeAccent,fontSize: 15.sp
                                ),),
                              ],
                            ),
                       
               
      ),
    );

    }

    }