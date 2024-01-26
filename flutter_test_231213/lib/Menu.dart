// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, non_constant_identifier_names, prefer_const_constructors_in_immutables, camel_case_types, must_be_immutable, use_key_in_widget_constructors, avoid_init_to_null, unnecessary_this, prefer_initializing_formals, prefer_conditional_assignment, file_names
import 'package:flutter/material.dart';
import 'package:flutter_test_231213/Row_.dart';

class MenuWithScaffold extends StatelessWidget {
  Color? backgroundColor;
  double? height;
  List<Widget>? headLeft;
  List<Widget>? headRight;
  Widget? body;
  double? width;
  MenuWithScaffold(
      {super.key,
      this.backgroundColor,
      this.height,
      this.headLeft,
      this.headRight,
      this.body,
      this.width});

  @override
  Widget build(BuildContext context) {
    if (headLeft == null) {
      headLeft = [];
    }

    if (headRight == null) {
      headRight = [];
    }

    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: backgroundColor,
          title: SizedBox(
            width: this.width,
            child: Row_LeftAndRight(
              leftChildren: headLeft == null ? [] : headLeft!,
              rightChildren: headRight == null ? [] : headRight!,
            ),
          )),
      body: body,
    );
  }
}

class Row_LeftAndRight extends StatelessWidget {
  List<Widget> leftChildren;
  List<Widget> rightChildren;
  double? width;
  double? height;
  Row_LeftAndRight(
      {super.key,
      this.width,
      this.height,
      this.leftChildren = const [],
      this.rightChildren = const []});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: this.height,
      width: width,
      child: Row_(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //Row Left
          IntrinsicHeight(
              child: Row_(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: leftChildren,
          )),

          //Row Right
          IntrinsicHeight(
              child: Row_(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: rightChildren))
        ],
      ),
    );
  }
}
