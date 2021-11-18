import 'package:flutter/material.dart';
import 'package:parcial04/app/ui/pages/home/home_page.dart';

void main() {
  runApp(const AppMapSuc());
}

class AppMapSuc extends StatelessWidget {
  const AppMapSuc({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sucursales',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: const HomePage(),
    );
  }
}

