import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon:Icon( Icons.arrow_back_rounded,color: Colors.black,)),
        backgroundColor: Colors.white,
        title: Text("Shopping Cart ",style: TextStyle(
          color: Color.fromRGBO(44, 105, 141, 1),
        ),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  itemCount: 6,
                  itemBuilder:(context,index){
                    return Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 100.h,
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: Colors.grey)),
                          ),
                          child:Row(
                            children: [
                              SizedBox(width: 20.w,),
                              Container(
                                width: 100.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: new NetworkImage("https://www.digitalsilk.com/wp-content/uploads/2020/05/ecommerce-coronavirus-hero-image.png"),
                                      fit: BoxFit.fill,
                                    )
                                ),
                              ),
                              SizedBox(width: 20.w,),
                              Text("Computer DEll 15.9 inch\n *1",),
                              SizedBox(width: 20.w,),
                              Text("10000 L.E",style: TextStyle(
                                color: Colors.orangeAccent
                              ),),
                            ],
                          ) ,
                        ),
                      ],
                    );
                  } ),
            ),
          ],
        ),
      ),
    );
  }
}
