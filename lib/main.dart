import 'package:flutter/material.dart';
import 'package:gaushala_frontend/res/color.dart';
import 'package:gaushala_frontend/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryColor),
        useMaterial3: true,
      ),
      routes: Routes().routes,
    );
  }
}
