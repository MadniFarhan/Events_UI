import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'splash_services.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  SplashServices _SplashServices = SplashServices();
  @override
  void initState(){
    super.initState();
    _SplashServices.isLogin(context);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.orange,
        child: Center(
          child: Icon(Icons.account_circle, color: Colors.white, size: 100),
        ),
      ),
    );
  }
}