import 'package:flutter/cupertino.dart';

Widget bgWidget({Widget? child}) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage('asset/image/loginbg1.png.webp'), fit: BoxFit.fill),
    ),
    child: child,
  );
}
