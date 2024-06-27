import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mvp/Routes/Routes.dart';

class SplashServices {
  void isLogin(BuildContext context) {
    Timer(
      Duration(seconds: 3),
          () => Navigator.pushNamedAndRemoveUntil(
        context,
        RoutesName.LoginScreen,
            (route) => false,
      ),
    );
  }
}
