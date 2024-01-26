// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, non_constant_identifier_names, prefer_const_constructors_in_immutables, camel_case_types, must_be_immutable, use_key_in_widget_constructors, avoid_init_to_null, unnecessary_this, prefer_initializing_formals, prefer_conditional_assignment
import 'package:flutter_test_231213/lib.dart';

class AppBar_ extends StatelessWidget {
  //parameter
  Color? backgroundColor;
  Widget? leading;
  Widget title;
  List<Widget> actions;
  double? height;
  double? leadingWidth;
  bool? centerTitle;

  
  AppBar_(
      {super.key,
      required this.title,
      required this.actions,
      this.leading,
      this.height,
      this.leadingWidth,
      this.backgroundColor,
      this.centerTitle});

  @override
  Widget build(BuildContext context) {
    return this.as_AppBar();
  }

  AppBar as_AppBar() {
    return AppBar(
        centerTitle: centerTitle,
        backgroundColor: backgroundColor,
        toolbarHeight: height,
        leadingWidth: leadingWidth,
        leading: leading,
        title: title,
        actions: actions);
  }
}
