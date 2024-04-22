import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stabrak/BLogic/firebase/firestore.dart';
import 'package:stabrak/Screens/Navi.dart';
import 'package:stabrak/Screens/homeScreen.dart';

class EditeProfile extends StatefulWidget {
  const EditeProfile({super.key});

  @override
  State<EditeProfile> createState() => _EditeProfileState();
}

class _EditeProfileState extends State<EditeProfile> {
  TextEditingController _name =TextEditingController();
  TextEditingController _age =TextEditingController();
  TextEditingController _phonenumber =TextEditingController();
  void dispose(){
    super.dispose();
    _name.dispose();
    _age.dispose();
    _phonenumber.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40.h,),
            Row(
              children: [
                SizedBox(width: 20.w,),
                CircleAvatar(radius: 15.0.r,backgroundColor: Colors.black54,
                child: CircleAvatar(backgroundColor: Colors.white,
                  child: GestureDetector(onTap: (){
                    Navigator.pop(context);
                  },child: Icon(Icons.arrow_back_ios_new,color: Colors.black,size: 20,)),radius: 14.0.r,), ),

                SizedBox(width: 50.w,),
                Text("Add New Adrees",style: TextStyle(
                    color: Color.fromRGBO(44,105,141, 1),fontSize: 20.sp,fontWeight: FontWeight.bold
                ),),
                SizedBox(width:70.w),
                 CircleAvatar(backgroundColor: Color.fromRGBO(44, 105, 141, 1),
                    child: GestureDetector(onTap: (){
                      Navigator.pop(context);
                    },child:Icon (CupertinoIcons.bell_fill,color: Colors.white,size: 20,)),radius: 20.0.r,),
              ],
            ),
            SizedBox(height: 40.h,),
            Row(
              children: [
                SizedBox(width: 30.w,),
                Text("Full Name"),
              ],
            ),
            SizedBox(height: 5.h,),
            Row(
              children: [
                SizedBox(width: 30.w,),
                SizedBox(
                  width: 300.w,
                  height: 40.h,
                  child: TextField(
                    controller: _name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0))
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:   BorderRadius.all(Radius.circular(10.0)),
                      )
                  ),),
                ),
              ],
            ),

        
          
            SizedBox(height: 10.h,),
            Row(
              children: [
                SizedBox(width: 30.w,),
                Text("Phone Number"),
              ],
            ),
            SizedBox(height: 5.h,),
            Row(
              children: [
                SizedBox(width: 30.w,),
                SizedBox(
                  width: 300.w,
                  height: 40.h,
                  child: TextField(
                    controller: _phonenumber,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0))
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:   BorderRadius.all(Radius.circular(10.0)),
                      )
                  ),),
                ),
              ],
            ),
            SizedBox(height: 10.h,),
            Row(
              children: [
                SizedBox(width: 30.w,),
                Text("age"),
              ],
            ),
            SizedBox(height: 5.h,),
            Row(
              children: [
            
               SizedBox(width: 30.w,),
                SizedBox(
                  width: 300.w,
                  height: 40.h,
                  child: TextField(
                    controller: _age,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0))
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:   BorderRadius.all(Radius.circular(10.0)),
                      )
                  ),),
                ),
              ],
            ),
            SizedBox(height: 35.h,),
            Center(
              child: SizedBox(
                width: 300.w,
                height: 50.h,
                child: ElevatedButton(onPressed: (){
                  try{
                    FireStore.AddUserInfo(_name.text.trim(), _age.text.trim(), _phonenumber.text.trim());
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>NaviScreen()));
                  }
                  catch(e){
                    print(e);
                  }
                }, child:Text("Confirm",style: TextStyle(
                    color: Colors.white,fontSize: 20.sp
                ),),style: ElevatedButton.styleFrom(shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)
                ),side: const BorderSide(width: 2.0,color: Color.fromRGBO(44,105,141,1)),backgroundColor: Color.fromRGBO(44,105,141, 1)),
                ),
              ),
            ),
            SizedBox(height: 20.h,),
            Center(
              child: SizedBox(
                width: 300.w,
                height: 50.h,
                child: ElevatedButton(onPressed: (){
                }, child:Text("Cancel",style: TextStyle(
                    color: Color.fromRGBO(44,105,141,1),fontSize: 20.sp
                ),),style: ElevatedButton.styleFrom(shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)
                ),side: const BorderSide(width: 2.0,color: Color.fromRGBO(44,105,141,1)),backgroundColor: Colors.white),
                ),
              ),
            ),
        ],
      ),
    ),
    );
  }
}
