import 'package:flutter/material.dart';
import 'package:t03_category_route/category.dart';

final _backgroundColor = Colors.green[100];

/// Category Route (screen).
///
/// This is the 'home' screen of the Unit Converter. It shows a header and
/// a list of [Categories].
///
/// While it is named CategoryRoute, a more apt name would be CategoryScreen,
/// because it is responsible for the UI at the route's destination.
class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  // category widegt 的名字集合
  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  // category 集合的每个 widget 的颜色
  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  // 构造可滚动的 widge
  Widget _buildCategoryWidget(List<Widget> categories) {
    return ListView.builder(
      // 子视图
      itemBuilder: (BuildContext context, int index) => categories[index],
      // 视图的个数
      itemCount: categories.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    // 定义一个以 category.dart 的集合
    final categories = <Category>[];

    // 通过遍历组合 categories
    for (var i = 0; i < _categoryNames.length; i++) {
      categories.add(Category(
          name: _categoryNames[i],
          color: _baseColors[i],
          iconLocation: Icons.cake));
    }

    // 初始化一个以名为 listView 的 Container widget 组件
    final listView = Container(
      color: _backgroundColor,
      child: _buildCategoryWidget(categories),
    );

    // 定义 appBar
    final appBar = AppBar(
      elevation: 0.0,
      title: Text(
        'Unit converter',
        style: TextStyle(
          color: Colors.black,
          fontSize: 30.0,
        ),
      ),
      centerTitle: true,
      backgroundColor: _backgroundColor,
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}
