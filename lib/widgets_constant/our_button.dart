import 'package:ecommerce_application/consts/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget ourButton({onpress, color, textcolor, String? title}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(primary: color),
    onPressed: onpress,
    child: title!.text.color(textcolor).fontWeight(FontWeight.bold).make(),
  );
}
