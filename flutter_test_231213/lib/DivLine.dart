// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, non_constant_identifier_names, prefer_const_constructors_in_immutables, camel_case_types, must_be_immutable, use_key_in_widget_constructors, avoid_init_to_null, unnecessary_this, prefer_initializing_formals, prefer_conditional_assignment, file_names
import 'package:flutter/material.dart';

class DivLine_ extends StatelessWidget {
  //parameter

  double? width;
  double? height;
  Color color;
  EdgeInsets? margin;

  DivLine_(
      {super.key,
      this.width = 0.1,
      this.height = 0.1,
      this.color = Colors.black,
      this.margin});

  @override
  Widget build(BuildContext context) {
    return new_DiveLine();
  }

  Widget new_DiveLine() {
    return Center(
      child: Container(
        width: width,
        height: height,
        color: color,
        margin: margin,
      ),
    );
  }
}
