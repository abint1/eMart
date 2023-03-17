import 'package:ecommerce_application/consts/list.dart';
import 'package:ecommerce_application/consts/strings.dart';
import 'package:ecommerce_application/views/auth_screen/signup_screen.dart';
import 'package:ecommerce_application/views/home_screen/home.dart';

import 'package:ecommerce_application/widgets_constant/applogo.dart';
import 'package:ecommerce_application/widgets_constant/bgwidget.dart';
import 'package:ecommerce_application/widgets_constant/custom_textfield.dart';
import 'package:ecommerce_application/widgets_constant/our_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogo(),
            10.heightBox,
            Text(
              'Log in to eMart',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            10.heightBox,
            Column(
              children: [
                customTextfield(hint: emaiHint, title: email),
                customTextfield(hint: passwordHint, title: password),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {}, child: forgetpass.text.make())),
                5.heightBox,
                // ourButton().box.width(context.screenWidth - 50).make(),
                ourButton(
                    color: Colors.red[600],
                    title: login,
                    textcolor: Colors.white,
                    onpress: () {
                      Get.to(() => Home());
                    }).box.width(context.screenWidth - 50).make(),
                5.heightBox,
                creatnewacc.text.color(Colors.grey[600]).make(),
                5.heightBox,
                ourButton(
                    color: Color.fromARGB(255, 255, 223, 195),
                    title: signup,
                    textcolor: Colors.red[400],
                    onpress: () {
                      Get.to(() => SignupScreen());
                    }).box.width(context.screenWidth - 50).make(),

                10.heightBox,
                loginwith.text.color(Colors.grey[600]).make(),
                5.heightBox,
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        3,
                        (index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.grey[100],
                                  child: Image.asset(
                                    socialIconList[index],
                                    width: 30,
                                  )),
                            )))
              ],
            )
                .box
                .white
                .rounded
                .padding(EdgeInsets.all(15))
                .width(context.screenWidth - 70)
                .shadowSm
                .make()
          ],
        ),
      ),
    ));
  }
}
