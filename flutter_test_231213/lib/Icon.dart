// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, non_constant_identifier_names, prefer_const_constructors_in_immutables, camel_case_types, must_be_immutable, use_key_in_widget_constructors, avoid_init_to_null, unnecessary_this, prefer_initializing_formals, prefer_conditional_assignment, unused_shown_name, file_names
import 'package:flutter/material.dart';

class Icon_ extends StatelessWidget {
  double? size;
  late IconData icon;
  Color? iconColor;

  Icon_({super.key, required this.icon, this.size, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return new_Icon();
  }

  Widget new_Icon() {
    return Icon(
      icon,
      size: size,
      color: iconColor,
    );
  }
}

class IconButton_ extends Icon_ {
  //parameter
  void Function()? OnPressed;
  Color? backgroundColor;
  Color? overlayColor;

  EdgeInsetsGeometry? padding;
  EdgeInsetsGeometry? margin;
  double borderRadius;
  double? width;
  double? height;
  //member variable
  late ButtonStyle style;

  @override
  IconButton_({
    super.key,
    required super.icon,
    super.size,
    this.width,
    this.height,
    super.iconColor,
    this.OnPressed,
    this.margin,
    this.backgroundColor,
    this.overlayColor,
    this.padding,
    this.borderRadius = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return new_IconButton();
  }

  Widget new_IconButton() {
    if (null == OnPressed) {
      OnPressed = () {};
    }

    style = ButtonStyle(
      overlayColor: MaterialStateProperty.all(overlayColor),
      backgroundColor: MaterialStateProperty.all(backgroundColor),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        //side: BorderSide(color: Colors.red) // border line color
      )),
    );

    Widget child = this.new_Icon();

    return Container(
      margin: this.margin,
      height: this.height,
      width: this.width,
      child: IconButton(
        padding: EdgeInsets.all(0),
        onPressed: OnPressed,
        icon: child,
        style: style,
      ),
    );
  }
}
