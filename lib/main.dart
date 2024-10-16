import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/modules/auth/register.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/auth/Login.dart';
import 'package:flutter_application_1/navigation/navigation.dart';
import 'package:flutter_application_1/navigation/profile.dart';
import 'package:flutter_application_1/navigation/reservations.dart';
import 'package:flutter_application_1/navigation/top.dart';
import 'package:flutter_application_1/widgets/home.dart';
import 'package:flutter_application_1/widgets/splash_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const Login(),
        '/register': (context) => const Register(),
        '/menu': (context) => const Navigation(),
        '/home': (context) => const Home(),
        '/profile': (context) => const ProfileScreen(),
        '/reservations': (context) => const ReservationsScreen(),
        '/top': (context) => const TopScree()
      },
    );
  }
}
