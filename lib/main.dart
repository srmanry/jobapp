import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'package:worker_s/login/login_page.dart';
import 'package:worker_s/home_page_.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: AppBarTheme(),
          primarySwatch: Colors.blue,
        ),
        //home: Home_page(),
        //home: Kormo_home(),
        home: login_screen());
  }
}
