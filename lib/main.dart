import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtest/config/injectable/injectable.dart';
import 'package:getxtest/config/routes/routes_path.dart';

void main() async {
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: RoutesPath.testing.path,
      getPages: serviceLocator<List<GetPage>>(),
      debugShowCheckedModeBanner: false,
    );
  }
}
