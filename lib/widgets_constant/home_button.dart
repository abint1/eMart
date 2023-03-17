import 'package:ecommerce_application/consts/icons.dart';
import 'package:ecommerce_application/consts/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

Widget homeButtons({width, height, icon, String? title, onPress}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        icon,
        width: 26,
      ),
      10.heightBox,
      title!.text.fontWeight(FontWeight.w500).make()
    ],
  ).box.rounded.white.size(width, height).make();
}
