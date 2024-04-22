import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChairScreen extends StatefulWidget {
  const ChairScreen({super.key});

  @override
  State<ChairScreen> createState() => _ChairScreenState();
}

class _ChairScreenState extends State<ChairScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20.h,),
            Row(
              children: [
                SizedBox(width: 10.w,),
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: Icon(Icons.arrow_back_sharp,color: Colors.black,)),
                Text("Chair",style: TextStyle(
                  fontSize: 15.sp,fontWeight: FontWeight.bold,color: Color.fromRGBO(44,105,141,1)
                ),)
              ],
            ),
            SizedBox(height: 20.h,),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ) , itemBuilder: (context,index){
                  return Card(

                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
