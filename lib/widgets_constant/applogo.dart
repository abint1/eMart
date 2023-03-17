import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

Widget applogo() {
  return Image.asset('asset/image/app_logo real.png')
      .box
      .white
      .size(76, 76)
      .padding(EdgeInsets.all(10))
      .rounded
      .make();
}
