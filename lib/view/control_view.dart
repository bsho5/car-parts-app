import 'package:e_commerce_app/core/view-model/home_view_model.dart';
import 'package:e_commerce_app/view/cart_screen.dart';
import 'package:e_commerce_app/view/home_screen.dart';
import 'package:e_commerce_app/view/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControlView extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
      builder:(controller) =>Scaffold(
        body:controller.currentScreen,
        bottomNavigationBar: bottomNavigationBar(),
      ),
    );
  }

  Widget bottomNavigationBar() {
    return GetBuilder<HomeViewModel>(
      init: HomeViewModel(),
      builder: (controler) => BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              activeIcon: Padding(
                padding: const EdgeInsets.only(top :25.0),
                child: Text("HOME"),
              ),
              icon: Padding(
                padding: const EdgeInsets.only(top :20.0),
                child: Icon(
                  Icons.home,
                  size: 30,
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
              activeIcon: Padding(
                padding: const EdgeInsets.only(top :25.0),
                child: Text("CART"),
              ),
              icon: Padding(
                padding: const EdgeInsets.only(top :20.0),
                child: Icon(
                  Icons.shopping_basket,
                  size: 30,
                ),
              ),
              label: ''),
               BottomNavigationBarItem(
              activeIcon: Padding(
                padding: const EdgeInsets.only(top :25.0),
                child: Text("PROFILE"),
              ),
              icon: Padding(
                padding: const EdgeInsets.only(top :20.0),
                child: Icon(
                  Icons.person_outlined,
                  size: 30,
                ),
              ),
              label: ''),
        ],
        selectedItemColor: Colors.black,
        backgroundColor: Colors.grey.shade50,
        elevation: 0,
        currentIndex: controler.navigatorValue,
        onTap: (index) {
          controler.changeSelectedValue(index);
          
        },
      ),
    );
  }
}
