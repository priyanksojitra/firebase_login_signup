import 'package:flutter/material.dart';

class Commontextfield extends StatelessWidget {
  final Widget? icon;
  final String? labelText;
  final TextEditingController? controller;

  const Commontextfield(
      {Key? key,
      required this.icon,
      required this.labelText,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 45,
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
            filled: true,
            fillColor: const Color(0xffEFEFEF),
            labelText: labelText,
            prefixIcon: icon,
          ),
        ),
      ),
    );
  }
}
