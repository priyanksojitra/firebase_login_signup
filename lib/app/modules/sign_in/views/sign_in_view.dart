import 'package:firebase_login_signup/app/app_config/app_constant.dart';
import 'package:firebase_login_signup/app/app_config/common_button.dart';
import 'package:firebase_login_signup/app/app_config/common_elevatedbutton.dart';
import 'package:firebase_login_signup/app/app_config/common_textbutton.dart';
import 'package:firebase_login_signup/app/app_config/common_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  SignInView({Key? key}) : super(key: key);

  final TextEditingController emialcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffDFE0E4),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  color: Color(0xff7972E6)),
              height: 250,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(right: 250, bottom: 190),
                child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    )),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 110, top: 80),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppConstant.size(height1: 120),
                  const Text("Sign in",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                  AppConstant.size(height1: 20),
                  const Text("Sign in to discover new things near\naround you",
                      style: TextStyle(color: Colors.white, fontSize: 10))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                              topRight: Radius.circular(30),
                              topLeft: Radius.circular(30),
                            ),
                            boxShadow: [
                              BoxShadow(color: Colors.grey, blurRadius: 15)
                            ],
                            color: Color(0xffFFFFFF)),
                        height: 250,
                        width: double.infinity,
                        child: Column(
                          children: [
                            AppConstant.size(height1: 20),
                            Commontextfield(
                              icon: const Icon(Icons.email),
                              labelText: 'Email',
                              controller: emialcontroller,
                            ),
                            AppConstant.size(height1: 20),
                            Commontextfield(
                              icon: const Icon(Icons.lock),
                              labelText: 'Password',
                              controller: passwordcontroller,
                            ),
                            AppConstant.size(height1: 20),
                            Commonelevatedbutton(
                              text: const Text("Sign In"),
                              buttoncolor: const Color(0xff7972E6),
                              onpress: () {},
                            ),
                            AppConstant.size(height1: 10),
                            const CommonTextbutton(
                              text: Text(
                                "Forgot Password?",
                                style: TextStyle(
                                    color: Color(0xff7C75E7), fontSize: 10),
                              ),
                            )
                          ],
                        )),
                  ),
                  AppConstant.size(height1: 20),
                  Row(
                    children: const [
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1.3,
                          indent: 20,
                          endIndent: 10,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Text(
                          "Or connect using",
                          style: TextStyle(
                              fontSize: 8, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1.3,
                          endIndent: 28,
                          indent: 6,
                        ),
                      ),
                    ],
                  ),
                  AppConstant.size(height1: 20),
                  const CommonButton(),
                  AppConstant.size(height1: 30),
                  const CommonTextbutton(
                    text: Text(
                      "SKIP",
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
