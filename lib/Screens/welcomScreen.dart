import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stabrak/Screens/signIn.dart';
import 'package:stabrak/Screens/signUp.dart';
import '../firebase_options.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child:MaterialApp(
        home: const WelcomeScreen(),
      ),
    );
  }
}
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});
  @override
  State<WelcomeScreen> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30.h,),
          Center(
            child: Container(
              width: 200.w,
              height: 350.h,
              child: Image(image: AssetImage("images/stabrak.png"),) ,
            ),
          ),
          SizedBox(height: 50.h,),
          Row(
            children: [
              SizedBox(width: 70.w,),
              SizedBox(
                width: 100.w,
                height: 50.h,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                }, child:Text("SignUp",style: TextStyle(
                    color: Colors.white,fontSize: 20.sp
                ),),style: ElevatedButton.styleFrom(shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)
                ),side: const BorderSide(width: 2.0,color: Color.fromRGBO(44,105,141,1)),backgroundColor: Color.fromRGBO(44,105,141, 1)),
                ),
              ),
              SizedBox(width: 30.w,),
              SizedBox(
                width: 100.w,
                height: 50.h,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
                }, child:Text("SignIn",style: TextStyle(
                    color:Color.fromRGBO(44,105,141,1),fontSize: 20.sp
                ),),style: ElevatedButton.styleFrom(shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)
                ),side: const BorderSide(width: 2.0,color: Color.fromRGBO(44,105,141,1)),backgroundColor: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
