import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:stabrak/Models/User.dart';
 class FireStore{
 static final auth =FirebaseAuth.instance;
  // ignore: non_constant_identifier_names
  static Future<void> Add (String name,String age ,String phonenumber) async {
    await FirebaseFirestore.instance.collection("Users").add({
      "username":name,
      "age":age,
      "phonenumber":phonenumber,
    });
  }
   static Future<void> AddUserInfo (String name,String age ,String phonenumber) async {
    await FirebaseFirestore.instance.collection("Users").doc(auth.currentUser!.uid).set({
      "username":name,
      "age":age,
      "phonenumber":phonenumber,
    });
  }
   

}