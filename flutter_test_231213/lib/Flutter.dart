// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, non_constant_identifier_names, prefer_const_constructors_in_immutables, camel_case_types, must_be_immutable, use_key_in_widget_constructors, avoid_init_to_null, unnecessary_this, prefer_initializing_formals, prefer_conditional_assignment
import 'package:flutter/material.dart';

import "Text.dart";


class Flutter_TextButton extends TextButton_ {
  @override
  Flutter_TextButton({
    required super.text,
    super.fontSize = 14,
    super.fontWeight = FontWeight.w900,
    super.fontColor,
    super.margin = const EdgeInsets.symmetric(horizontal: 11.0, vertical: 8.0),
    super.backgroundColor,
    super.padding = const EdgeInsets.symmetric(horizontal: 11.0, vertical: 8.0),
    super.OnPressed,
  });
}
