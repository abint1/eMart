import 'package:ecommerce_application/views/category_screen/item_detail.dart';
import 'package:ecommerce_application/widgets_constant/bgwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:ecommerce_application/consts/strings.dart';

import '../../consts/icons.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;
  const CategoryDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: title!.text.fontWeight(FontWeight.bold).white.make(),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    6,
                    (index) => "Baby Clothing"
                        .text
                        .size(12)
                        .fontWeight(FontWeight.w500)
                        .color(Colors.grey[800])
                        .makeCentered()
                        .box
                        .white
                        .size(120, 60)
                        .margin(EdgeInsets.symmetric(horizontal: 4))
                        .roundedSM
                        .make()),
              ),
            ),
            20.heightBox,
            Expanded(
                child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 6,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 250,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8),
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      imgP5,
                      height: 150,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    "Laptop 4GB/64GB"
                        .text
                        .fontWeight(FontWeight.w500)
                        .color(Colors.grey[800])
                        .make(),
                    10.heightBox,
                    "\$600"
                        .text
                        .color(Colors.deepOrangeAccent[400])
                        .fontWeight(FontWeight.bold)
                        .size(16)
                        .make()
                  ],
                )
                    .box
                    .white
                    .margin(const EdgeInsets.symmetric(horizontal: 4))
                    .roundedSM
                    .outerShadowSm
                    .padding(const EdgeInsets.all(12))
                    .make()
                    .onTap(() {
                  Get.to(() => ItemDetails(title: "Dummy item"));
                });
              },
            ))
          ],
        ),
      ),
    ));
  }
}
