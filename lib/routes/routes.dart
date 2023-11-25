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
  static String bookSlot = '/bookslot';
  static String payment = '/payment';
  static String paymentProcessing = '/processingpayment';
  static String paymentSuccessful = '/paymentsuccessful';
}

final getPages = [
  GetPage(
    name: Routes.splash,
    page: () => const Splash(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: Routes.login,
    page: () => const Login(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: Routes.signup,
    page: () => const Signup(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: Routes.home,
    page: () => const Home(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: Routes.map,
    page: () => const Map(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: Routes.payment,
    page: () => const Payment(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: Routes.paymentProcessing,
    page: () => const PaymentProcessing(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: Routes.paymentSuccessful,
    page: () => const PaymentSuccessful(),
    transition: Transition.rightToLeft,
  ),
];
