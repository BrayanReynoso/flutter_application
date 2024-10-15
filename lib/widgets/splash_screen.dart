import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
const SplashScreen({ super.key });

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    /*Future.delayed(const Duration(seconds: 3), (){
      Navigator.pushReplacementNamed(context, '/login');
    });*/
   FirebaseAuth.instance.authStateChanges().listen((User? user){
      if(user == null){
        print(user?.uid);
        Navigator.pushReplacementNamed(context, '/login');
      }else{
        Navigator.pushNamed(context, '/menu');
      }
    }
    );

  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blue,
     body: Center(
       child: Image.asset('assets/logo.png', width: 200, height: 200,),
     ),
    );
  }
}
