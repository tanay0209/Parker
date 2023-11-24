import 'package:get/get.dart';
import 'package:parker/view/application/home.dart';
import 'package:parker/view/authentication/login.dart';
import 'package:parker/view/authentication/signup.dart';
import 'package:parker/view/payment/payment.dart';
import 'package:parker/view/payment/payment_successful.dart';
import 'package:parker/view/payment/processing_payment.dart';
import 'package:parker/view/splash_screen.dart';
import 'package:parker/view/application/map.dart';

class Routes {
  static String splash = '/';
  static String login = '/login';
  static String signup = '/signup';
  static String home = '/home';
  static String map = '/map';
  static String payment = '/payment';
  static String paymentProcessing = '/processingpayment';
  static String paymentSuccessful = '/paymentsuccessful';
}

final getPages = [
  GetPage(
    name: Routes.splash,
    page: () => const Splash(),
  ),
  GetPage(
    name: Routes.login,
    page: () => const Login(),
  ),
  GetPage(
    name: Routes.signup,
    page: () => const Signup(),
  ),
  GetPage(
    name: Routes.home,
    page: () => const Home(),
  ),
  GetPage(
    name: Routes.map,
    page: () => const Map(),
  ),
  GetPage(
    name: Routes.payment,
    page: () => const Payment(),
  ),
  GetPage(
    name: Routes.paymentProcessing,
    page: () => const PaymentProcessing(),
  ),
  GetPage(
    name: Routes.paymentSuccessful,
    page: () => const PaymentSuccessful(),
  ),
  // GetPage(
  //   name: Routes.map,
  //   page: () => const Map(),
  // ),
];
