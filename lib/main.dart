import 'package:flutter/material.dart';
import 'package:newapp_functions/config/app_routes.dart';
import 'package:newapp_functions/styles/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Urbanist',
          scaffoldBackgroundColor: AppColors.grey,
          brightness: Brightness.dark),
      initialRoute: AppRoutes.startPage,
      routes: AppRoutes.pages,
    );
  }
}
