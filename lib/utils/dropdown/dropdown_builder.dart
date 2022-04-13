
import 'package:flutter/material.dart';

class PopupWidget extends StatefulWidget {
  const PopupWidget({Key? key}) : super(key: key);

  @override
  State<PopupWidget> createState() => _PopupWidgetState();
}

enum menuitem{ item1 ,item2 , item3 , item4 }

class _PopupWidgetState extends State<PopupWidget> {
  menuitem? _mitem = menuitem.item1;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
