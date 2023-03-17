import 'package:ecommerce_application/consts/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget customTextfield({String? title, String? hint, controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.color(Colors.red[600]).size(16).make(),
      5.heightBox,
      TextFormField(
        decoration: InputDecoration(
            hintText: hint,
            isDense: true,
            fillColor: Colors.grey[200],
            filled: true,
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: Color.fromARGB(255, 229, 57, 53),
            ))),
      ),
      10.heightBox
    ],
  );
}
