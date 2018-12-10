import 'package:flutter/material.dart';
import 'package:t03_category_route/category.dart';

// TODO: Pass this information into your custom [Category] widget
const _categoryName = 'Cake';
const _categoryIcon = Icons.cake;
const _categoryColor = Colors.green;

// 主程序
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 关闭 debug 标签
      debugShowCheckedModeBanner: false,
      // 头部标题栏
      title: 'Unit Converter',
      // home 位置为 Scaffold
      home: Scaffold(
        // 背景颜色
        backgroundColor: Colors.green[100],
        body: Center(
          // 这个节点是以名为 Category 的 widegt
          // 传入所需参数
          child: ListView(
            children: <Widget>[
              Category(
                name: _categoryName,
                color: _categoryColor,
                iconLocation: _categoryIcon,
              ),
              Category(
                name: _categoryName,
                color: _categoryColor,
                iconLocation: _categoryIcon,
              ),
              Category(
                name: _categoryName,
                color: _categoryColor,
                iconLocation: _categoryIcon,
              ),
              Category(
                name: _categoryName,
                color: _categoryColor,
                iconLocation: _categoryIcon,
              ),
              Category(
                name: _categoryName,
                color: _categoryColor,
                iconLocation: _categoryIcon,
              ),
              Category(
                name: _categoryName,
                color: _categoryColor,
                iconLocation: _categoryIcon,
              ),
              Category(
                name: _categoryName,
                color: _categoryColor,
                iconLocation: _categoryIcon,
              ),
              Category(
                name: _categoryName,
                color: _categoryColor,
                iconLocation: _categoryIcon,
              ),
            ],
          )
        ),
      ),
    );
  }
}
