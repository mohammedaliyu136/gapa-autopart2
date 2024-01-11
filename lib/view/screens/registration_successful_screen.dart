import 'package:flutter/material.dart';
import 'package:citester/helper/route_helper.dart';
import 'package:citester/util/dimensions.dart';
import 'package:citester/util/styles.dart';
import 'package:citester/view/base/customButton.dart';
import 'package:get/get.dart';

class RegistrationSuccessfulScreen extends StatefulWidget {
  @override
  _RegistrationSuccessfulScreenState createState() => _RegistrationSuccessfulScreenState();
}

class _RegistrationSuccessfulScreenState extends State<RegistrationSuccessfulScreen> {

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
          child: Column(children: [
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Image.asset('assets/icons/check-circle.png', height: 100,),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text("Successful ", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeExtraLarge)),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text("You have successfully registered\nin our app", style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeDefault),textAlign: TextAlign.center,),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),//getHomeRoute
              child: CustomButton(text: 'Start Shopping', tap: ()=>Get.toNamed(RouteHelper.getHomeRoute()), color: Colors.blue,),
            ),
          ],),
        )
    );
  }
}
