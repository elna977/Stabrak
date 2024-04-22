import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stabrak/Screens/Navi.dart';
import 'package:stabrak/Screens/signUp.dart';
import 'package:stabrak/Screens/homeScreen.dart';

import '../BLogic/firebase/Auth.dart';
class SignIn extends StatefulWidget {
  const SignIn({super.key});
  @override
  State<SignIn> createState() => _SignInState();
}
class _SignInState extends State<SignIn> {

  TextEditingController _emailController =TextEditingController();
  TextEditingController _passwordController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child:Column(
        children: [
          SizedBox(height: 40.h,),
          Row(
            children: [
              SizedBox(width: 25.w,),
              GestureDetector(onTap: (){
                Navigator.pop(context);
              },
                  child: Icon(Icons.arrow_back_ios,color: Colors.black,size: 20,))
            ],
          ),
          SizedBox(height: 20.h,),
          Row(
            children: [
              SizedBox(width: 25.w,),
              Text("Log In",style: TextStyle(
                  color: Colors.black,fontSize: 25.sp,fontWeight: FontWeight.bold
              ),)
            ],
          ),
          SizedBox(height: 35.h,),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextField(
              controller: _emailController,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.check_circle,color: Colors.blueGrey,),
                labelText: "EMAIL",
                prefixIcon: Icon(Icons.email,color: Color.fromRGBO(44,105,141,1),),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                ),
                hintText: "Enter your email",
                focusedBorder: OutlineInputBorder(
                  borderRadius:   BorderRadius.all(Radius.circular(10.0)),
                )
            ),),
          ),
          SizedBox(height: 10.h,),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextField(autofocus: true,
              controller: _passwordController,
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye_outlined,color: Colors.blueGrey,),
                  labelText: "Password",
                  prefixIcon: Icon(Icons.lock,color: Color.fromRGBO(44,105,141,1),),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  hintText: "Enter your Password",
                  focusedBorder: OutlineInputBorder(
                    borderRadius:   BorderRadius.all(Radius.circular(10.0)),
                  )
              ),),
          ),
          SizedBox(height: 35.h,),
          Center(
            child: SizedBox(
              width: 300.w,
              height: 50.h,
              child: ElevatedButton(onPressed: (){
                try{
                  Authentication.login(_emailController.text.trim(), _passwordController.text.trim());
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NaviScreen()));
                }
                catch(e){
                  print(e);
                }

              }, child:Text("Sign In",style: TextStyle(
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
                try{
                  Authentication.signInWithGoogle();
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NaviScreen()));
                }
                catch(e){
                  print(e);
                  }
              }, child:Text("Sing In with google",style: TextStyle(
                  color: Color.fromRGBO(44,105,141,1),fontSize: 20.sp
              ),),style: ElevatedButton.styleFrom(shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)
              ),side: const BorderSide(width: 2.0,color: Color.fromRGBO(44,105,141,1)),backgroundColor: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 20.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("If you donet have account ?  ",style: TextStyle(
                  color: Colors.black54,fontSize: 15.sp
              ),),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
              }, child:Text("Sign up",style: TextStyle(
                  color:Color.fromRGBO(44,105,141,1),fontSize: 15.sp
              ),) )
            ],
          ),
        ],
      ),
      )
    );
  }
}
