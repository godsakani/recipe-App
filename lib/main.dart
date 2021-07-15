import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/AllScreens/loginScreen.dart';
import 'package:recipe_app/AllScreens/mainscreen.dart';
import 'package:recipe_app/AllScreens/registrationScreen.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
 DatabaseReference usersRef = FirebaseDatabase.instance.reference().child("users");
class MyApp extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App',
      theme: ThemeData(
        fontFamily: "Brand Bold",
        primarySwatch: Colors.blue,
      ),
      initialRoute: LoginScreen.idScreen,
      routes:
      {
        RegistrationScreen.idScreen:(context)=>RegistrationScreen(),
        LoginScreen.idScreen:(context)=>LoginScreen(),
        MainScreen.idScreen:(context)=>MainScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}



