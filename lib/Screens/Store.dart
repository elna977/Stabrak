import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stabrak/Models/Product.dart';
import 'package:stabrak/Widget/product.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});
  @override
  State<StoreScreen> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30.h,),
             Container(
                width: MediaQuery.of(context).size.width,
                height: 220.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                    padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                    itemBuilder:(context,index){
                      return Padding(
                        padding:const EdgeInsets.all(8.0),
                        child: ProductScreen(product: Product(productImag1: "https://www.digitalsilk.com/wp-content/uploads/2020/05/ecommerce-coronavirus-hero-image.png",
                        productName: "Product Name",productprice: 100.0,),),
                        );
                        } ,),
              ),
              SizedBox(height: 40.h,),
               Container(
                width: MediaQuery.of(context).size.width,
                height: 220.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                    padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                    itemBuilder:(context,index){
                      return Padding(
                        padding:const EdgeInsets.all(8.0),
                        child:CircleAvatar(
                          radius: 50.0.r,
                          backgroundImage: NetworkImage("https://www.digitalsilk.com/wp-content/uploads/2020/05/ecommerce-coronavirus-hero-image.png"),
                        ),
                        );
                        } ,),
              ),
               SizedBox(height: 20.h,),
             Container(
                width: MediaQuery.of(context).size.width,
                height: 220.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                    padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                    itemBuilder:(context,index){
                      return Padding(
                        padding:const EdgeInsets.all(8.0),
                        child: ProductScreen(product: Product(productImag1: "https://www.digitalsilk.com/wp-content/uploads/2020/05/ecommerce-coronavirus-hero-image.png",
                        productName: "Product Name",productprice: 100.0,),),
                        );
                        } ,),
              ),
          ],
        ),
      ),
    );
 }
}