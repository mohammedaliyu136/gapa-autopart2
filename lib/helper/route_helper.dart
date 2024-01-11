import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:citester/view/screens/cart_screen.dart';
import 'package:citester/view/screens/checkout/checkout_screen.dart';
import 'package:citester/view/screens/dashboard/home_screen.dart';
import 'package:citester/view/screens/login_or_signup_screen.dart';
import 'package:citester/view/screens/login_screen.dart';
import 'package:citester/view/screens/onboarding_screen.dart';
import 'package:citester/view/screens/order_detail_screen.dart';
import 'package:citester/view/screens/orders_list_screen.dart';
import 'package:citester/view/screens/product_detail_screen.dart';
import 'package:citester/view/screens/profile_screen.dart';
import 'package:citester/view/screens/register_screen.dart';
import 'package:citester/view/screens/registration_successful_screen.dart';
import 'package:citester/view/screens/splash_screen.dart';
import 'package:citester/view/screens/success_screen.dart';
import 'package:citester/view/screens/welcome_screen.dart';
import 'package:get/get.dart';
class RouteHelper {
  static const String initial = '/';
  static const String splash = '/splash';
  static const String onBoarding = '/onboarding';
  static const String loginOrSignup = '/loginOrSignup';
  static const String login = '/login';
  static const String signUP = '/sign-up';
  static const String registrationSuccessful = '/registration/successful';
  static const String forgetPassword = '/forget-password';
  static const String welcome = '/welcome';
  static const String home = '/home';
  static const String productDetail = '/product-detail';
  static const String cart = '/cart';
  static const String checkout = '/checkout';
  static const String profile = '/profile';
  static const String success = '/success';
  static const String ordersList = '/orders/list';
  static const String orderDetailsScreen = '/orders/details';
  static const String otp = '/otp';

  static String getInitialRoute() => '$initial';
  static String getSplashRoute() => '$splash';
  static String getOnboardingRoute() => '$onBoarding';
  static String getLoginOrSignupRoute() => '$loginOrSignup';
  static String getLoginRoute() => '$login';
  static String getSignUPRoute() => '$signUP';
  static String getRegistrationSuccessfulRoute() => '$registrationSuccessful';
  static String getHomeRoute() => '$home';
  static String getProductDetailRoute() => '$productDetail';
  static String getCartRoute() => '$cart';
  static String getCheckoutRoute() => '$checkout';
  static String getProfileRoute() => '$profile';
  static String getOrdersListRoute() => '$ordersList';
  static String getOrderDetailsScreenRoute() => '$orderDetailsScreen';
  static String getWelcomeRoute() => '$welcome';
  static String getSuccessRoute() => '$success';
  static String getForgetPasswordRoute() => '$forgetPassword';
  static String getOTPRoute() => '$otp';

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => getRoute(SplashScreen())),
    GetPage(name: splash, page: () => getRoute(SplashScreen())),
    GetPage(name: onBoarding, page: () => getRoute(OnboardingScreen())),
    GetPage(name: loginOrSignup, page: () => getRoute(LoginOrSignupScreen())),
    GetPage(name: login, page: () => getRoute(LoginScreen())),
    GetPage(name: signUP, page: () => getRoute(RegisterScreen())),
    GetPage(name: registrationSuccessful, page: () => getRoute(RegistrationSuccessfulScreen())),
    //GetPage(name: forgetPassword, page: () => getRoute(const ResetPasswordScreen())),
    GetPage(name: home, page: () => getRoute(HomeScreen())),
    GetPage(name: productDetail, page: () => getRoute(ProductDetailScreen())),
    GetPage(name: cart, page: () => getRoute(CartScreen())),
    GetPage(name: checkout, page: () => getRoute(CheckoutScreen())),
    GetPage(name: profile, page: () => getRoute(ProfileScreen())),
    GetPage(name: ordersList, page: () => getRoute(OrdersListScreen())),
    GetPage(name: orderDetailsScreen, page: () => getRoute(OrderDetailsScreen())),
    GetPage(name: welcome, page: () => getRoute(WecomeScreen())),
    GetPage(name: success, page: () => getRoute(SuccessScreen())),
    //GetPage(name: otp, page: () => getRoute(const OTPScreen())),
    ];

  static getRoute(Widget navigateTo){
    return navigateTo;
  }
}