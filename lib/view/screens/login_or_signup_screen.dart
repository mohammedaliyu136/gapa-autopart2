import 'package:flutter/material.dart';
import 'package:citester/helper/route_helper.dart';
import 'package:citester/util/dimensions.dart';
import 'package:citester/util/styles.dart';
import 'package:citester/view/base/customButton.dart';
import 'package:get/get.dart';

class LoginOrSignupScreen extends StatefulWidget {
  @override
  _LoginOrSignupScreenState createState() => _LoginOrSignupScreenState();
}

class _LoginOrSignupScreenState extends State<LoginOrSignupScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0),
                child: Center(child: Image.asset("assets/icons/gallery_logo.png", width: 300,),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 28.0),
                child: Center(child: Image.asset("assets/onboarding/baby_1.png")),
              ),
              CustomButton(text:"Login", tap:()=>Get.toNamed(RouteHelper.getLoginRoute()), color:Colors.blue),
              CustomButton(text:"Sign Up", tap:()=>Get.toNamed(RouteHelper.getSignUPRoute()), color:Colors.black),
          ],),
        )
    );
  }
}
