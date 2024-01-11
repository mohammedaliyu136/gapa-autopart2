import 'package:flutter/material.dart';
import 'package:citester/helper/route_helper.dart';
import 'package:citester/util/dimensions.dart';
import 'package:citester/util/styles.dart';
import 'package:get/get.dart';

class SuccessScreen extends StatefulWidget {
  @override
  _SuccessScreenState createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {

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

      /*
        appBar: AppBar(
          toolbarHeight: 100,
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Image.asset('assets/icons/gallery_logo.png', width: 200,),
          leading: Icon(Icons.menu, color: Colors.black,),
          actions: [
            Icon(Icons.notifications_none_rounded, color: Colors.black,),
            SizedBox(width: 20,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(decoration: BoxDecoration(
                  color:Colors.grey,
                  borderRadius: BorderRadius.circular(100),
                ), width: 30, height: 30,),
              ],
            ),
            SizedBox(width: 10,)
          ],
        ),*/
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset("assets/icons/check-circle.png", width: 200,),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text("Order\nDelivered", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeOverLarge*2, color: Colors.blue), textAlign: TextAlign.center,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Order Details", style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeLarge),),
          ),
          Text("377373873992", style: robotoBold.copyWith(color: Colors.blue, fontSize: Dimensions.fontSizeOverLarge),),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 1.5)
                  ),
                  child: TextButton(
                    onPressed: ()=>Get.offNamed(RouteHelper.getHomeRoute()),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text("BACK TO HOME", style: robotoBold,),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],)
    );
  }
}
