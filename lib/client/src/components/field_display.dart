import 'package:flutter/material.dart';

/// FieldDisplayComponent
///
/// Компонент для вывода поля
/// * [fieldName] - Название поля(обязательно для заполнения)
/// * [title] - Значение текста, если [title] пусто - ничего не выводит
/// * [customWidget] - Любой [Widget] если не подходит [String] значение, если [customWidget] пусто - ничего не выводит
///
class FieldDisplayComponent extends StatelessWidget {
  final String fieldName;
  final String title;
  final Widget customWidget;
  final bool isDivider;
  final EdgeInsetsGeometry padding;

  const FieldDisplayComponent(
      {Key key,
      this.fieldName = 'Название',
      this.title = null,
      this.customWidget = null,
      this.isDivider = true,
      this.padding = const EdgeInsets.fromLTRB(4.0, 8.0, 4.0, 8.0)})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(fieldName,
              style: TextStyle(fontSize: 12, color: Color(0xff2196f3))),
          if (title != null) Text(title),
          if (customWidget != null) customWidget,
          if (isDivider) new Divider(height: 5.0, color: Colors.black),
        ],
      ),
    );
  }
}
