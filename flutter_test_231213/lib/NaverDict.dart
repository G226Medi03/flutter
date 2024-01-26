// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, non_constant_identifier_names, prefer_const_constructors_in_immutables, camel_case_types, must_be_immutable, use_key_in_widget_constructors, avoid_init_to_null, unnecessary_this, prefer_initializing_formals, prefer_conditional_assignment, constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutter_test_231213/Menu.dart';
import "Text.dart";

class NaverDict_Menu_TextButton extends TextButton_ {
  @override
  NaverDict_Menu_TextButton(
      {required super.text,
      super.fontSize = 18,
      super.fontWeight = FontWeight.w400,
      super.fontColor = const Color.fromRGBO(255, 255, 255, 0.8),
      super.margin = EdgeInsets.zero,
      super.backgroundColor,
      super.OnPressed,
      super.textOutlineColor = Colors.black38,
      super.textOutlineWidth = 0.5,
      super.hoverBackgroundColor});
}

class NaverDict_VerticalDivline extends VerticalDivider {
  NaverDict_VerticalDivline(
      {super.key,
      super.width = 1,
      super.indent = 10,
      super.endIndent = 10,
      super.color = Colors.black,
      super.thickness = 0.2});
}

const Color NAVER_COLOR = Color.fromRGBO(3, 199, 90, 1);

class NaverDict_Menu extends MenuWithScaffold {
  NaverDict_Menu({
    super.key,
    super.backgroundColor,
    super.height,
    super.width,
    super.headLeft,
    super.headRight,
  });
}
