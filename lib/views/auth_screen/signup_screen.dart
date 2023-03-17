import 'package:ecommerce_application/widgets_constant/custom_textfield.dart';
import 'package:ecommerce_application/widgets_constant/our_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/list.dart';
import '../../consts/strings.dart';
import '../../widgets_constant/applogo.dart';
import '../../widgets_constant/bgwidget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck = false;
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
              'Join to eMart',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            10.heightBox,
            Column(
              children: [
                customTextfield(hint: namehint, title: name),
                customTextfield(hint: emaiHint, title: email),
                customTextfield(hint: passwordHint, title: password),
                customTextfield(hint: passwordHint, title: retypepass),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {}, child: forgetpass.text.make())),
                5.heightBox,
                // ourButton().box.width(context.screenWidth - 50).make(),

                Row(
                  children: [
                    Checkbox(
                        activeColor: Colors.red,
                        checkColor: Colors.white,
                        value: isCheck,
                        onChanged: (newValue) {
                          setState(() {
                            isCheck = newValue;
                          });
                        }),
                    10.widthBox,
                    Expanded(
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "I agree to the ",
                            style: TextStyle(color: Colors.grey[700])),
                        TextSpan(
                            text: termsAndCondition,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.red)),
                        TextSpan(
                            text: " & ",
                            style: TextStyle(color: Colors.grey[700])),
                        TextSpan(
                            text: privacyPolicy,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.red)),
                      ])),
                    ),
                  ],
                ),
                ourButton(
                        color: isCheck == true
                            ? Colors.red[600]
                            : Colors.grey[350],
                        title: signup,
                        textcolor: Colors.white,
                        onpress: () {})
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                10.heightBox,
                // wraping into gusture detector of velocityx
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: alreadyHaveAccount,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600])),
                  TextSpan(
                      text: login,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red))
                ])).onTap(() {
                  Get.back();
                })
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
