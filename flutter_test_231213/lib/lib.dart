// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, non_constant_identifier_names, prefer_const_constructors_in_immutables, camel_case_types, must_be_immutable, use_key_in_widget_constructors, avoid_init_to_null, unnecessary_this, prefer_initializing_formals, prefer_conditional_assignment
import 'package:flutter/material.dart';

export 'package:flutter/material.dart';



export "AppBar.dart";
export "DivLine.dart";
export "Empty.dart";
export "Icon.dart";
export "Input.dart";
export "Menu.dart";
export "NaverDict.dart";
export "Text.dart";
export "ToggleButtons.dart";
export "Row_.dart";

void runApp_(Widget app) {
  runApp(
    MaterialApp(
      home: Directionality(
        // add this
        textDirection: TextDirection.ltr, // set this property
        child: app,
      ),
    ),
  );
}
