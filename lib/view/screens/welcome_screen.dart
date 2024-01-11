import 'package:flutter/material.dart';
import 'package:citester/helper/route_helper.dart';
import 'package:get/get.dart';

class WecomeScreen extends StatefulWidget {
  @override
  _WecomeScreenState createState() => _WecomeScreenState();
}

class _WecomeScreenState extends State<WecomeScreen> {

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
          child: Stack(
            children: [
              Image.asset('assets/icons/welcome_screen_background.png',width: MediaQuery.of(context).size.width, fit: BoxFit.cover),
              Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Row(
                    children: [
                      Expanded(flex:3,child: SizedBox()),
                      Expanded(flex:7,child: Image.asset('assets/icons/gallery_logo.png', height: 100,)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Image.asset('assets/icons/welcome_img_1.png'),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Send anything ", style: TextStyle(fontSize: 20),),
                    Text("Fast", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 20),),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text("""Create your quick account,\nfind the best rates and transfer your\nitems from one location to another.""", style: TextStyle(fontSize: 14, letterSpacing: 1.2, wordSpacing: 1.2, height: 1.2), textAlign: TextAlign.center,),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: GestureDetector(
                    onTap: ()=>Get.toNamed(RouteHelper.getLoginRoute()),
                    child: Container(child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset("assets/icons/arrow-up-right.png"),
                    ),decoration: BoxDecoration(
                        color: Colors.black,
                      boxShadow: [
                      BoxShadow(
                      color: Colors.grey.shade300,
                      spreadRadius: 10,
                      //offset: Offset(4, 4),
                          blurRadius:2,
                        blurStyle: BlurStyle.normal
                    ),],
                      borderRadius: BorderRadius.circular(100),

                    ),),
                  ),
                )
              ],),
            ],
          ),
        )
    );
  }
}
