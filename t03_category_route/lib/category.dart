// https://www.dartlang.org/guides/language/effective-dart/style#ordering
import 'package:flutter/material.dart';

final _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(_rowHeight / 2);

/// A custom [Category] widget.
///
/// The widget is composed on an [Icon] and [Text]. Tapping on the widget shows
/// a colored [InkWell] animation.
class Category extends StatelessWidget {
  final String name;
  final ColorSwatch color;
  final IconData iconLocation;

  /// Creates a [Category].
  ///
  /// A [Category] saves the name of the Category (e.g. 'Length'), its color for
  /// the UI, and the icon that represents it (e.g. a ruler).
  // TODO: You'll need the name, color, and iconLocation from main.dart
  const Category(
      {Key key,
      @required this.name,
      @required this.color,
      @required this.iconLocation})
      : assert(name != null),
        assert(color != null),
        assert(iconLocation != null);

  /// Builds a custom widget that shows [Category] information.
  ///
  /// This information includes the icon, name, and color for the [Category].
  @override
  // This `context` parameter describes the location of this widget in the
  // widget tree. It can be used for obtaining Theme data from the nearest
  // Theme ancestor in the tree. Below, we obtain the display1 text theme.
  // See https://docs.flutter.io/flutter/material/Theme-class.html
  // context 是描述的是这个 widget 在 widget 树中的位置，可以用于获取最近 widget 数据
  Widget build(BuildContext context) {
    // TODO: Build the custom widget here, referring to the Specs.
    return Material(
      // 颜色透明
      color: Colors.transparent,
      child: Container(
        // 高度
        height: _rowHeight,
        child: InkWell(
          borderRadius: _borderRadius,
          // 触碰反馈
          onTap: () {
            print('I was tapped!');
          },
          child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                // 坐标轴的方向，这里是伸展
                crossAxisAlignment: CrossAxisAlignment.end,
                // Row 下只能是 children ,而不能用 child
                children: <Widget>[
                  Padding(
                    // padding 的尺寸
                    padding: EdgeInsets.all(16.0),
                    child: Icon(
                      iconLocation,
                      size: 60.0,
                      color: color,
                    ),
                  ),
                  Center(
                    child: Text(
                      name,
                      textAlign: TextAlign.center,
                      // 获取到上个部件的文字主题的 headline 属性
                      style: Theme.of(context).textTheme.headline,
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
