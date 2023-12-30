import 'package:flutter/material.dart';
import 'package:projek/login_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
            builder: (context) => LoginPage(),
        ),
        (route) => false);
      });

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splashscreen.png'),
            fit: BoxFit.scaleDown, // atau sesuaikan dengan kebutuhan Anda
          ),
        ),
      ),
    );
  }
}