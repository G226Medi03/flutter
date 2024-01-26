// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, non_constant_identifier_names, prefer_const_constructors_in_immutables, camel_case_types, must_be_immutable, use_key_in_widget_constructors, avoid_init_to_null, unnecessary_this, prefer_initializing_formals, prefer_conditional_assignment, file_names, avoid_function_literals_in_foreach_calls
import 'package:flutter_test_231213/Function.dart';
import 'package:flutter_test_231213/lib.dart';

class MyTextButtonSelection extends StatefulWidget {
  List<TextButton_> children;
  int? indexTrue;
  MyTextButtonSelection({super.key, required this.children, this.indexTrue});

  @override
  State<MyTextButtonSelection> createState() => _MyTextButtonSelectionState();
}

class _MyTextButtonSelectionState extends State<MyTextButtonSelection> {
  late List<bool> listBool;
  bool isFirstTime = true;

  @override
  Widget build(BuildContext context) {
    if (isFirstTime) {
      listBool = List.generate(widget.children.length, (_) => false);

      if (this.widget.indexTrue != null) {
        listBool[this.widget.indexTrue!] = true;
        this.widget.children[this.widget.indexTrue!].isActive = true;
      }
    }

    for (int i = 0; i < widget.children.length; i++) {
      TextButton_ elem = widget.children[i];

      elem.OnPressed = () {
        initiate_listBool(listBool);
        listBool[i] = elem.isActive;
        setState(() {
          for (int j = 0; j < widget.children.length; j++) {
            widget.children[j].isActive = listBool[j];
          }
        });
        rebuildAllChildren(context);
        // print(listBool);1111
      };
    }

    isFirstTime = false;
    return Row_(
      // width: double.infinity,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widget.children,
    );
  }
}

void initiate_listBool(List<bool> listBool) {
  for (int i = 0; i < listBool.length; i++) {
    listBool[i] = false;
  }
}
