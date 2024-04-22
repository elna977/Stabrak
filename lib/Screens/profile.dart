import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stabrak/BLogic/firebase/firestore.dart';
import 'package:stabrak/Models/User.dart';
import 'package:stabrak/Screens/editeProfileEntry.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
   UserModel?user;
    static final auth =FirebaseAuth.instance;
   String name="";
   String age="";
   String phonenumber="";
   Future<void> GetUserInfo () async {
    await FirebaseFirestore.instance.collection("Users").doc(auth.currentUser!.uid).get().then((snapshot) {
      if(snapshot.exists){
           setState(() {
             name= snapshot.data()!['username'];
            age= snapshot.data()!['age'];
            phonenumber= snapshot.data()!['phonenumber'];
           });  
           return user;
      }else{
        print("No Data");
        
      }
    });
  }
    
  void initState(){
    super.initState();
    GetUserInfo();
  }
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
                SizedBox(width: 250.w,),
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>EditeProfileEntry()));
                }, icon: Icon(Icons.edit,color: Color.fromRGBO(44, 105, 141, 1),)),
              ],
            ),
            SizedBox(height: 10.h,),
            Row(
              children: [
                SizedBox(width: 15.w,),
                Text("Profile",style: TextStyle(
                  fontSize: 25.sp,color: Color.fromRGBO(44, 105, 141, 1),fontWeight: FontWeight.bold
                ),),
              ],
            ),
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage:  AssetImage("images/profile.jpg"),radius: 50.r,
                ),
              ],
            ),
            SizedBox(height: 10.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 15.w,),
                Text(name,style: TextStyle(
                    fontSize: 25.sp,color: Color.fromRGBO(44, 105, 141, 1),
                ),),
              ],
            ),
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 15.w,),
                Text(phonenumber,style: TextStyle(
                  fontSize: 15.sp,color: Colors.black,
                ),),
              ],
            ),
            SizedBox(height: 50.h,),
            Container(
              width: 360,
              height: 160,
              color:Color.fromRGBO(44, 105, 141, 1) ,
              child: Column(children: [
                SizedBox(height: 40.h,),
                Row(children: [
                  SizedBox(width: 40.w,),
                  Text(age,style: TextStyle(
                    fontSize: 20.sp,color: Colors.white
                  ),),
                    SizedBox(width: 80.w,),
                  Text("5",style: TextStyle(
                    fontSize: 20.sp,color: Colors.white
                  ),),
                    SizedBox(width: 80.w,),
                  Text("1800",style: TextStyle(
                    fontSize: 20.sp,color: Colors.white
                  ),),
                ],),
                SizedBox(height: 30.h,),
                 Row(children: [
                  SizedBox(width: 30.w,),
                  Text("Age",style: TextStyle(
                    fontSize: 15.sp,color: Colors.white
                  ),),
                    SizedBox(width: 60.w,),
                  Text("Total Order",style: TextStyle(
                    fontSize: 15.sp,color: Colors.white
                  ),),
                    SizedBox(width: 40.w,),
                  Text("Total Price",style: TextStyle(
                    fontSize: 15.sp,color: Colors.white
                  ),),
                ],)
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
