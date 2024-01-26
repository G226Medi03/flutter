// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, non_constant_identifier_names, prefer_const_constructors_in_immutables, camel_case_types, must_be_immutable, use_key_in_widget_constructors, avoid_init_to_null, unnecessary_this, prefer_initializing_formals, prefer_conditional_assignment, file_names
import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  String? labelText;
  double? fontSize;
  FontWeight? fontWeight;
  EdgeInsets padding;
  double borderRadius;
  Color? borderColor;
  EdgeInsets? margin;
  double width;
  Input(
      {super.key,
      required this.width,
      this.labelText,
      this.fontSize,
      this.fontWeight,
      this.padding = const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      this.borderRadius = 4.0,
      this.margin,
      this.borderColor});

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder? border;

    border = OutlineInputBorder(
        // borderSide: BorderSide(style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(this.borderRadius));
    return Container(
        margin: margin,
        width: this.width,
        child: TextField(
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
          decoration: InputDecoration(
            border: border,
            labelText: labelText,
            isDense: true,
            contentPadding: this.padding,
            // icon: Icon(Icons.search),
          ),
        ));
  }
}
