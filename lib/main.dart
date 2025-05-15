import 'package:flutter/material.dart';
import 'src/screens/home_screen.dart';
import 'src/components/ypay_textstyle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'YPay Widgets',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: YpayColors.primary),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

