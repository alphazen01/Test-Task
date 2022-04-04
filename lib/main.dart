import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/controller/custom_theme.dart';
import 'package:test/screens/home.dart';
import 'package:test/screens/navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
      home: NavigationScreen(),
      // home: HomePage(),

      title: 'Flutter Demo',
       theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
    );
  }
}
