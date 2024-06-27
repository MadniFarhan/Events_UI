import 'package:flutter/material.dart';
import 'package:mvp/models/login/loginscreen.dart';
import 'package:mvp/splash/splash_screen.dart';

import 'Routes/Routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: RoutesName.SplashScreen,
      routes: {
        RoutesName.SplashScreen: (context) => SplashScreen(),
        RoutesName.LoginScreen: (context) => LoginScreen(),
        // Add other routes here
      },
      home: SplashScreen(),
    );
  }
}


