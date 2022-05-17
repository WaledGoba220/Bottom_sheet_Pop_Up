import 'package:bottom_sheet_pop_up_dialouge/screens/bottom_sheet_screen.dart';
import 'package:bottom_sheet_pop_up_dialouge/screens/pop_up_dialouge_screen.dart';
import 'package:bottom_sheet_pop_up_dialouge/screens/tab_bar_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: 'BottomSheet & Pop Dialogue',
      home: TabBarScreen(),
    );
  }
}
