import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stabrak/Models/CategoryModel.dart';
import 'package:stabrak/Models/Product.dart';
import 'package:stabrak/Screens/cartView.dart';
import 'package:stabrak/Screens/categoriesScreen.dart';
import 'package:stabrak/Screens/chair.dart';
import 'package:stabrak/Screens/profile.dart';
import 'package:stabrak/Widget/Category.dart';
import 'package:stabrak/Widget/product.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _homeScreenState();
}
class _homeScreenState extends State<HomeScreen> {
  List<CategoryModel>list=[
    CategoryModel(name: "Bages", image: "https://i.imgur.com/2GAYp77.jpg"),
    CategoryModel(name: "bottel", image: "https://i.imgur.com/cd2lNV7.png"),
    CategoryModel(name: "clothes", image: "https://i.imgur.com/FIrzEH9.png"),
    CategoryModel(name: "shoes", image: "https://i.imgur.com/BihkeUq.jpeg"),
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text("Stabrak",style: TextStyle(
          color: Color.fromRGBO(44,105,141,1),fontSize: 15.sp,fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoriesScreen()));
          }, icon: Icon(Icons.search,color:Color.fromRGBO(44,105,141,1))),
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>CartView()));
            
          }, icon:Icon( Icons.shopping_cart_outlined,color:Color.fromRGBO(44,105,141,1) ,)),
          
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: new NetworkImage("https://www.digitalsilk.com/wp-content/uploads/2020/05/ecommerce-coronavirus-hero-image.png"),
                  fit: BoxFit.fill,
                )
              ),
              child: Column(
                children: [
                  SizedBox(height: 130.h,),
                  GestureDetector(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ChairScreen()));
                  },
                    child: Container(
                      width: 130.w,
                      height: 30.h,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Shope Now ",style: TextStyle(
                            color: Colors.black,
                          ),),
                          SizedBox(width: 20.w,),
                          Icon(Icons.arrow_right_alt,size: 30.sp,)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
             SizedBox(height: 20.h,),
            Row(
              children: [
                SizedBox(width: 10.w,),
                Text("Categories",style: TextStyle(
                    color: Colors.black,fontSize: 25.0.sp,fontWeight: FontWeight.bold
                ),),
              ],
            ),
             Container(
              width: MediaQuery.of(context).size.width,
              height: 250.h,
              child:GridView.builder(
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.5
                  ),
                  itemCount: list.length,
                 itemBuilder: (context,i){
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CategoryWidget(category: list[i],),
                    );
                 }
                 )),
            SizedBox(height: 20.h,),
            Row(
              children: [
                SizedBox(width: 10.w,),
                Text("Most Order",style: TextStyle(
                    color: Colors.black,fontSize: 25.0.sp,fontWeight: FontWeight.bold
                ),),
              ],
            ),
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
                      productImag2: "https://i.imgur.com/2GAYp77.jpeg",
                      productImag3: "https://i.imgur.com/cd2lNV7.png",
                      productDescreption: "Product Discription",
                      productName: "Product Name",productprice: 500.0,productoldprice: 700.0,
                      productColor1: Colors.black,
                      productColor2: Colors.blue,
                      productColor3: Colors.cyanAccent,
                      ),),
                      );
                      } ,),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 10.w,),
                Text("Most Sales ",style: TextStyle(
                    color: Colors.black,fontSize: 25.0.sp,fontWeight: FontWeight.bold
                ),),
              ],
            ),
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
            Row(
              children: [
                SizedBox(width: 10.w,),
                Text("Stabrak prime deals",style: TextStyle(
                    color: Colors.black,fontSize: 15.0.sp,fontWeight: FontWeight.bold
                ),),
              ],
            ),
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
