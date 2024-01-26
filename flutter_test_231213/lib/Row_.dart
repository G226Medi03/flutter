// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, non_constant_identifier_names, prefer_const_constructors_in_immutables, camel_case_types, must_be_immutable, use_key_in_widget_constructors, avoid_init_to_null, unnecessary_this, prefer_initializing_formals, prefer_conditional_assignment, file_names
import 'package:flutter/material.dart';

class Row_ extends StatelessWidget {
  dynamic mainAxisAlignment;
  dynamic crossAxisAlignment;
  double? width;
  double? height;
  Color? backgroundColor;
  List<Widget> children;

  Row_(
      {super.key,
      required this.children,
      this.mainAxisAlignment = MainAxisAlignment.center,
      this.crossAxisAlignment = CrossAxisAlignment.start,
      this.width,
      this.height,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return new_Row();
  }

  Widget new_Row() {
    // if (maxWidth == null) {
    //   maxWidth = double.infinity;
    // }

    // if (minWidth == null) {
    //   minWidth = 0.0;
    // }
    return Container(
        color: backgroundColor,
        height: height,
        width: width,
        child: Row(
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          children: children,
        ));
  }
}
