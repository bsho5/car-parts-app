import 'package:e_commerce_app/view/cart_screen.dart';
import 'package:e_commerce_app/view/home_screen.dart';
import 'package:e_commerce_app/view/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {
   Widget _currentScreen = HomeScreen();
  int _navigatorValue = 0;
  get navigatorValue => _navigatorValue;
  get currentScreen => _currentScreen;
  void changeSelectedValue(selctedValue) {
    _navigatorValue = selctedValue;
    switch (selctedValue) {
            case 0:
              {
                _currentScreen = HomeScreen();
                break;
              }

            case 1:
              {
                _currentScreen = CartScreen();
                break;
              }
            case 2:
              {
                _currentScreen = ProfileScreen();
                break;
              }
            default:
          }
    update();
  }
} 
