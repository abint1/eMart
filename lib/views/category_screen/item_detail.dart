import 'package:ecommerce_application/consts/icons.dart';
import 'package:ecommerce_application/consts/list.dart';
import 'package:ecommerce_application/consts/strings.dart';
import 'package:ecommerce_application/widgets_constant/our_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:velocity_x/velocity_x.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: title!.text
              .color(Colors.grey[800])
              .fontWeight(FontWeight.bold)
              .make(),
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.share,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_outline,
                ))
          ],
        ),
        body: Column(
          children: [
            Expanded(
                child: Padding(
              padding: EdgeInsets.all(8),
              child: SingleChildScrollView(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // swiper section
                  VxSwiper.builder(
                    autoPlay: true,
                    height: 350,
                    itemCount: 3,
                    aspectRatio: 16 / 9,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        imgFc5,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                  10.heightBox,
                  // title and details section
                  title!.text
                      .size(16)
                      .color(Colors.grey[800])
                      .fontWeight(FontWeight.w500)
                      .make(),
                  10.heightBox,
                  // rating
                  VxRating(
                    onRatingUpdate: (value) {},
                    normalColor: Colors.grey,
                    selectionColor: Colors.amber,
                    count: 5,
                    size: 25,
                    stepInt: true,
                  ),
                  10.heightBox,
                  "\$30,000"
                      .text
                      .color(Colors.deepOrangeAccent)
                      .fontWeight(FontWeight.bold)
                      .size(18)
                      .make(),
                  10.heightBox,
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          " Seller"
                              .text
                              .white
                              .fontWeight(FontWeight.w500)
                              .make(),
                          5.heightBox,
                          "In House Brands"
                              .text
                              .fontWeight(FontWeight.w500)
                              .color(Colors.grey[800])
                              .size(16)
                              .make()
                        ],
                      )),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.message_rounded,
                          color: Colors.grey[800],
                        ),
                      )
                    ],
                  )
                      .box
                      .height(60)
                      .padding(EdgeInsets.symmetric(horizontal: 16))
                      .color(Colors.grey)
                      .make(),
                  // color section
                  20.heightBox,
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "color : ".text.color(Colors.grey).make(),
                          ),
                          Row(
                            children: List.generate(
                                3,
                                (index) => VxBox()
                                    .size(40, 40)
                                    .roundedFull
                                    .color(Vx.randomPrimaryColor)
                                    .margin(EdgeInsets.symmetric(horizontal: 6))
                                    .make()),
                          )
                        ],
                      ).box.make(),
                      // quanmtity row
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "color : ".text.color(Colors.grey).make(),
                          ),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.remove)),
                              "0"
                                  .text
                                  .size(16)
                                  .color(Colors.grey[800])
                                  .fontWeight(FontWeight.bold)
                                  .make(),
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.add)),
                              10.widthBox,
                              "0 Available".text.color(Colors.grey).make()
                            ],
                          ),
                        ],
                      ).box.make(),
                      // total
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Total : ".text.color(Colors.grey).make(),
                          ),
                          "\$0.00"
                              .text
                              .color(Colors.deepOrangeAccent)
                              .size(16)
                              .fontWeight(FontWeight.w500)
                              .make()
                        ],
                      ).box.make()
                    ],
                  ).box.padding(EdgeInsets.all(8)).white.shadowSm.make(),
                  // discription
                  10.heightBox,
                  "Description"
                      .text
                      .color(Colors.grey[800])
                      .fontWeight(FontWeight.w500)
                      .make(),
                  10.heightBox,
                  "This is a dummy item and dummy description"
                      .text
                      .color(Colors.grey[800])
                      .fontWeight(FontWeight.w500)
                      .make(),

                  //butoon section
                  10.heightBox,
                  ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: List.generate(
                        itemDetailsButtonList.length,
                        (index) => ListTile(
                              title: "${itemDetailsButtonList[index]}"
                                  .text
                                  .fontWeight(FontWeight.w500)
                                  .make(),
                              trailing: Icon(Icons.arrow_forward),
                            )),
                  ),
                  20.heightBox,
                  // products may like section
                  productsYouLike.text
                      .fontWeight(FontWeight.bold)
                      .size(16)
                      .color(Colors.grey[800])
                      .make(),
                  10.heightBox,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          6,
                          (index) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    imgP1,
                                    width: 150,
                                    fit: BoxFit.cover,
                                  ),
                                  10.heightBox,
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
                                  .margin(
                                      const EdgeInsets.symmetric(horizontal: 4))
                                  .roundedSM
                                  .padding(const EdgeInsets.all(8))
                                  .make()),
                    ),
                  )
                ],
              )),
            )),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ourButton(
                  color: Colors.deepOrangeAccent[400],
                  onpress: () {},
                  textcolor: Colors.white,
                  title: "Add to cart"),
            )
          ],
        ));
  }
}
