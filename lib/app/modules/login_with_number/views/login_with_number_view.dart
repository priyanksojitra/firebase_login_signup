import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/login_with_number_controller.dart';

class LoginWithNumberView extends GetView<LoginWithNumberController> {
  const LoginWithNumberView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginWithNumberView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'LoginWithNumberView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}