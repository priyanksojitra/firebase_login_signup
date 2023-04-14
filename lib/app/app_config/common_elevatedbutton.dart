import 'package:flutter/material.dart';

class Commonelevatedbutton extends StatelessWidget {
  final Widget text;
  final Color buttoncolor;
  final void Function()? onpress;
  final BorderSide? side;

  const Commonelevatedbutton({Key? key,
    required this.text,

    required this.buttoncolor, required this.onpress, this.side})
      : super(key: key);

  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: 35,
      width: 230,
      child: ElevatedButton(
          onPressed: onpress,
          style: ElevatedButton.styleFrom(
              backgroundColor: buttoncolor,
            side: side,
          ),
          child: text

      ),
    );
  }
}