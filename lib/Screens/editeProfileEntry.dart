import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stabrak/BLogic/firebase/firestore.dart';
import 'package:stabrak/Models/User.dart';

class EditeProfileEntry extends StatefulWidget {
  const EditeProfileEntry({super.key});

  @override
  State<EditeProfileEntry> createState() => _EditeProfileEntryState();
}

class _EditeProfileEntryState extends State<EditeProfileEntry> {
 UserModel?user;
    static final auth =FirebaseAuth.instance;
   TextEditingController _name =TextEditingController();
   TextEditingController _age =TextEditingController();
   TextEditingController _phonenumber =TextEditingController();
   Future<void> GetUserInfo () async {
    await FirebaseFirestore.instance.collection("Users").doc(auth.currentUser!.uid).get().then((snapshot) {
      if(snapshot.exists){
           setState(() {
            _name.text= snapshot.data()!['username'];
            _age.text= snapshot.data()!['age'];
            _phonenumber.text= snapshot.data()!['phonenumber'];
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
                      label: Text(
                        "Full Name"
                      ),
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
                      label: Text(
                        "Phone Number"
                      ),
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
                      label: Text("Age"),
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
                    //Fluttertoast.showToast(
                    //  msg: "Profile Update",
                    //  toastLength: Toast.LENGTH_SHORT,
                    //  gravity: ToastGravity.BOTTOM,
                    //  timeInSecForIosWeb: 1,
                    //  backgroundColor: Color.fromRGBO(44,105,141, 1),
                    //  textColor: Colors.white,
                    //  fontSize: 16.0.sp
                    //);
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