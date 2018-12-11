import 'package:flutter/material.dart';

import 'package:t03_category_route/category_route.dart';

// 主程序
void main() => runApp(UnitConvertApp());

class UnitConvertApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      // home 位置由
      home: CategoryRoute(),
    );
  }
}
