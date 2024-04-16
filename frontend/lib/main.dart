import 'package:flutter/material.dart';
import 'package:frontend/pages/home.dart';
import 'package:frontend/pages/register.dart';
import 'package:frontend/themes/theme_provider.dart';
import 'package:provider/provider.dart';
import 'pages/login_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
      // home: LoginPage(
      //   onTap:(){}
      // ), // Removed 'title' parameter
      title: 'Flutter Demo',
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
