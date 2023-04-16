import 'package:firebase_login_signup/app/app_config/app_constant.dart';
import 'package:firebase_login_signup/app/app_config/common_elevatedbutton.dart';
import 'package:firebase_login_signup/app/app_config/common_textbutton.dart';
import 'package:firebase_login_signup/app/modules/firebase_auth_service/views/firebase_auth_service_view.dart';
import 'package:firebase_login_signup/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController>{
  HomeView({Key? key}) : super(key: key);

  @override
  final HomeController controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffDFE0E4),
        body: Stack(children: [
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                color: Color(0xff7972E6)),
            height: 250,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 110, top: 80),
            child: Image.asset(
              "assets/Screenshot 2023-04-11 181424.png",
              width: 80,
              height: 80,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppConstant.size(height1: 180),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 300,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                      ),
                      boxShadow: [
                        BoxShadow(color: Colors.black, blurRadius: 15)
                      ],
                      color: Color(0xffFFFFFF)),
                  child: Column(children: [
                    AppConstant.size(height1: 25),
                    const Text("Welcome to App Name.",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black)),
                    AppConstant.size(height1: 14),
                    const Text("Discover Amazing Thing Near Around You.",
                        style: TextStyle(fontSize: 12, color: Colors.black)),
                    AppConstant.size(height1: 30),
                    Commonelevatedbutton(
                      text: const Text(
                        "Sign in",
                      ),
                      buttoncolor: const Color(0xff7972E6),
                      onpress: () {
                        Get.toNamed(Routes.SIGN_IN);
                      },
                    ),
                    AppConstant.size(height1: 10),
                    Commonelevatedbutton(
                      text: const Text(
                        "Sign Up",
                        style: TextStyle(color: Color(0xff7972E6)),
                      ),
                      buttoncolor: Colors.white,
                      side:
                          const BorderSide(color: Color(0xff7972E6), width: 2),
                      onpress: () {
                        Get.toNamed(Routes.SIGN_UP);
                      },
                    ),
                    AppConstant.size(height1: 10),
                    Row(
                      children: const [
                        Expanded(
                          child: Divider(
                            color: Colors.grey,
                            thickness: 1.3,
                            indent: 17,
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
                            endIndent: 17,
                            indent: 6,
                          ),
                        ),
                      ],
                    ),
                    AppConstant.size(height1: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 120),
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
                        InkWell(
                          onTap: () {
                           Authservice. signInWithGoogle();
                          },
                          child: Image.asset(
                            "assets/google.png",
                            width: 30,
                            height: 30,
                          ),
                        ),
                        AppConstant.size(width1: 10),
                        InkWell(
                          onTap: () {
                            Get.toNamed(Routes.LOGIN_WITH_NUMBER);
                          },
                          child: Image.asset(
                            "assets/smartphone-call.png",
                            width: 30,
                            height: 30,
                          ),
                        ),
                      ]),
                    )
                  ]),
                ),
              ),
              AppConstant.size(height1: 70),
              const CommonTextbutton(
                text: Text(
                  "SKIP",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ]));
  }
}
