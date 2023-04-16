import 'package:flutter/material.dart';

import 'app_constant.dart';

class CommonButton extends StatefulWidget {
  const CommonButton({Key? key}) : super(key: key);

  @override
  State<CommonButton> createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 60,
      width: 250,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20)),
          color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.only(left: 50),
        child: Row(children: [
          Image.asset(
            "assets/facebook.png",
            width: 30,
            height: 30,
          ),
          AppConstant.size(width1: 10),
          Image.asset(
            "assets/twitter.png",
            width: 30,
            height: 30,
          ),
          AppConstant.size(width1: 10),
          Image.asset(
            "assets/google.png",
            width: 30,
            height: 30,
          ),
          AppConstant.size(width1: 10),
          Image.asset(
            "assets/smartphone-call.png",
            width: 30,
            height: 30,
          ),
        ]),
      ),
    );
  }
}
