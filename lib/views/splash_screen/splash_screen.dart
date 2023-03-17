import 'package:ecommerce_application/views/auth_screen/login_screen.dart';
import 'package:ecommerce_application/widgets_constant/applogo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // creating a method to change screen
  changeScreen() {
    Future.delayed(Duration(seconds: 3), () {
      // using getx
      Get.to(() => const LoginScreen());
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 178, 12, 0),
      body: Center(
        child: Column(
          children: [
            300.heightBox,
            applogo(),
            10.heightBox,
            Text(
              'eMart',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 1.5),
            ),
            Text(
              'version 1.0.0',
              style: TextStyle(color: Color.fromARGB(255, 170, 165, 165)),
            )
          ],
        ),
      ),
    );
  }
}
