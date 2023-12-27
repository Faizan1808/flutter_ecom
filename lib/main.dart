import 'package:flutter/material.dart';
import 'package:flutter_ecom/pages/homepage.dart';
import 'package:flutter_ecom/pages/loginPage.dart';
import 'package:flutter_ecom/utils/routes.dart';
import 'package:flutter_ecom/widgets/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: homePage,
      routes: {
        "/": (context) => const LoginPage(),
        homePage: (context) => const HomePage(),
        loginPage: (context) => const LoginPage()
      },
    );
  }
}
