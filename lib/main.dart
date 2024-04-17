import 'package:flutter/material.dart';
import 'package:kakao_app/ui/mainholder/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _appbar(),
      home: MainPage(),
    );
  }

  ThemeData _appbar() {
    return ThemeData(
      appBarTheme: AppBarTheme(
        elevation: 0.0,
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 24),
        iconTheme: IconThemeData(color: Colors.black)
      )
    );
  }
}
