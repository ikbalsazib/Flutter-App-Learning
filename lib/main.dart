import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_flutter_learning/pages/home_page.dart';
import 'package:my_flutter_learning/pages/login_page.dart';
import 'package:my_flutter_learning/routes/app_route.dart';
import 'package:my_flutter_learning/widgets/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: const HomePage(),
      themeMode: ThemeMode.system,
      theme: AppTheme.lightThemeData,
      darkTheme: AppTheme.darkThemeData,
      // initialRoute: "/home",
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.homeRoute,
      routes: {
        "/": (context) => const LoginPage(),
        AppRoute.homeRoute: (context) => const HomePage(),
        AppRoute.loginRoute: (context) => const LoginPage(),
      },
    );
  }
}
