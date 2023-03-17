import 'package:ecommerce_application/consts/icons.dart';
import 'package:ecommerce_application/consts/strings.dart';
import 'package:ecommerce_application/controller/home_controller.dart';
import 'package:ecommerce_application/views/cart_screen/cart_screen.dart';
import 'package:ecommerce_application/views/category_screen/category_screen.dart';
import 'package:ecommerce_application/views/home_screen/home_scren.dart';
import 'package:ecommerce_application/views/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    //  init home controller
    var controller = Get.put(HomeController());

    var navBarItems = [
      BottomNavigationBarItem(
          icon: Image.asset(
            icHome,
            width: 26,
          ),
          label: home),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCategories,
            width: 26,
          ),
          label: categories),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCart,
            width: 26,
          ),
          label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(
            icProfile,
            width: 26,
          ),
          label: account)
    ];
    var navBody = [
      HomeScreen(),
      CategoryScreen(),
      CartScreen(),
      ProfileScreen(),
    ];
    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => Expanded(
              child: navBody.elementAt(controller.currentNavIndex.value),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          selectedItemColor: Colors.deepOrangeAccent[400],
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: navBarItems,
          onTap: (Value) {
            controller.currentNavIndex.value = Value;
          },
        ),
      ),
    );
  }
}
