import 'package:get/get.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login_with_number/bindings/login_with_number_binding.dart';
import '../modules/login_with_number/views/login_with_number_view.dart';
import '../modules/sign_in/bindings/sign_in_binding.dart';
import '../modules/sign_in/views/sign_in_view.dart';
import '../modules/sign_up/bindings/sign_up_binding.dart';
import '../modules/sign_up/views/sign_up_view.dart';
import '../modules/stream_builder/bindings/stream_builder_binding.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.STREAM_BUILDER;

  static final routes = [
    GetPage(
      name: _Paths.HELLO,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_WITH_NUMBER,
      page: () => const LoginWithNumberView(),
      binding: LoginWithNumberBinding(),
    ),
    GetPage(
      name: _Paths.STREAM_BUILDER,
      page: () => StreamBuilderView(),
      binding: StreamBuilderBinding(),
    ),
  ];
}
