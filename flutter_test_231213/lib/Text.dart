// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, non_constant_identifier_names, prefer_const_constructors_in_immutables, camel_case_types, must_be_immutable, use_key_in_widget_constructors, avoid_init_to_null, unnecessary_this, prefer_initializing_formals, prefer_conditional_assignment
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class Text_ extends StatelessWidget {
  //parameter
  String text;
  double? fontSize;
  Color fontColor;
  FontWeight? fontWeight;
  Color? textOutlineColor;
  double textOutlineWidth;
  Text_(
      {required this.text,
      this.fontSize,
      this.fontColor = Colors.black,
      this.fontWeight,
      this.textOutlineColor,
      this.textOutlineWidth = 1});

  @override
  Widget build(BuildContext context) {
    return new_Text();
  }

  Widget new_Text() {
    TextStyle style = TextStyle(
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: fontColor,
    );
    if (textOutlineColor == null) {
      return Text(text, style: GoogleFonts.lato(textStyle: style));
    }

    return Stack(
      children: <Widget>[
        Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = textOutlineWidth
              ..color = textOutlineColor!, // <-- Border color
          ),
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: fontColor, // <-- Inner color
          ),
        ),
      ],
    );
  }

  //  Text(
  //         "asdf",
  //         style: TextStyle(
  //           fontSize: 20,
  //           fontWeight: FontWeight.bold,
  //           foreground: Paint()
  //             ..style = PaintingStyle.stroke
  //             ..strokeWidth = 3
  //             ..color = Colors.white, // <-- Border color
  //         ),
  //       ),
}

class TextButton_ extends StatefulWidget {
  //parameter-Text_
  String text;
  double? fontSize;
  Color fontColor;
  Color? activeFontColor;

  FontWeight? fontWeight;
  Color? textOutlineColor;
  double textOutlineWidth;
  //parameter

  void Function()? OnPressed;
  Color? backgroundColor;
  Color? hoverBackgroundColor;
  Color? hoverActiveBackgroundColor;
  Color? activeBackgroundColor;
  Color? borderColor;
  EdgeInsetsGeometry? padding;
  EdgeInsetsGeometry margin;
  double borderRadius;

  bool bReSet_isActive_when_reClick;
  bool isActive = false;

  @override
  TextButton_({
    this.margin = const EdgeInsets.all(0),
    this.padding,
    this.OnPressed,
    required this.text,
    this.fontSize = 14,
    this.fontWeight,
    this.fontColor = Colors.black,
    this.textOutlineColor,
    this.textOutlineWidth = 1,
    this.backgroundColor,
    this.borderRadius = 8.0,
    this.hoverBackgroundColor,
    this.hoverActiveBackgroundColor,
    this.activeBackgroundColor,
    this.bReSet_isActive_when_reClick = false,
    this.activeFontColor,
    this.borderColor,
  });

  @override
  State<TextButton_> createState() => _TextButton_State();
}

class _TextButton_State extends State<TextButton_> {
  //member var
  late Text_ child;
  late ButtonStyle style;
  Color? fontColor;
  Color? Get_backgroundColorByState_whenNotActive(Set<MaterialState> states) {
    if (states.contains(MaterialState.hovered)) {
      if (widget.hoverBackgroundColor != null) {
        return widget.hoverBackgroundColor;
      }
    }
    return widget.backgroundColor;
  }

  Color? Get_backgroundColorByState_whenActive(Set<MaterialState> states) {
    if (states.contains(MaterialState.hovered)) {
      if (widget.hoverActiveBackgroundColor != null) {
        return widget.hoverActiveBackgroundColor;
      }
      if (widget.hoverBackgroundColor != null) {
        return widget.hoverBackgroundColor;
      }
    }
    if (widget.activeBackgroundColor != null) {
      return widget.activeBackgroundColor;
    }
    return widget.backgroundColor;
  }

  Widget new_TextButton() {
    fontColor = this.Get_textFontColor();
    if (null == widget.OnPressed) {
      this.widget.OnPressed = () {};
    }

    style = ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith((states) {
        return this.widget.isActive
            ? Get_backgroundColorByState_whenActive(states)
            : Get_backgroundColorByState_whenNotActive(states);
      }),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
        side: BorderSide(
            color: this.widget.borderColor == null
                ? Colors.transparent
                : this.widget.borderColor!),
        borderRadius: BorderRadius.circular(widget.borderRadius),
        //side: BorderSide(color: Colors.red) // border line color
      )),
      minimumSize: this.widget.padding == null
          ? null
          : MaterialStatePropertyAll(Size.zero),
      padding: this.widget.padding == null
          ? null
          : MaterialStatePropertyAll(this.widget.padding),
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    );

    this.child = Text_(
        text: this.widget.text,
        fontSize: this.widget.fontSize,
        fontColor: fontColor!,
        fontWeight: widget.fontWeight,
        textOutlineColor: widget.textOutlineColor,
        textOutlineWidth: widget.textOutlineWidth);

    return Container(
      margin: widget.margin,
      child: TextButton(
          onPressed: () {
            setState(() {
              if (widget.bReSet_isActive_when_reClick) {
                this.widget.isActive = !this.widget.isActive;
              } else {
                this.widget.isActive = true;
              }
            });

            widget.OnPressed!();
          },
          child: FittedBox(
              child:
                  Container(child: this.child, margin: widget.padding)),
          style: style),
    );
  }

  Color Get_textFontColor() {
    if (this.widget.activeFontColor == null) {
      return this.widget.fontColor;
    }

    if (this.widget.isActive) {
      return this.widget.activeFontColor!;
    } else {
      return this.widget.fontColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return new_TextButton();
  }

  void Set_isActive(bool bSet_isActive) {
    setState(() {
      this.widget.isActive = bSet_isActive;
    });
  }
}
