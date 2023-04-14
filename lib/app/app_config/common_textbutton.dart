import 'package:flutter/material.dart';

class CommonTextbutton extends StatelessWidget {

  final Widget text;

 const CommonTextbutton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () {}, child: text);
  }
}
