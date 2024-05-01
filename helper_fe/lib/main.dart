import 'package:flutter/material.dart';
// import 'login.dart'; 
import 'bottom_navigation_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 71, 169, 146)),
        useMaterial3: true,
      ),
      home: BottomNavigationBarWidget(), 
    );
  }
}
