import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:citester/helper/route_helper.dart';
import 'package:citester/util/dimensions.dart';
import 'package:citester/util/styles.dart';
import 'package:citester/view/screens/dashboard/widget/cart_widget.dart';
import 'package:citester/view/screens/dashboard/widget/home_widget.dart';
import 'package:citester/view/screens/dashboard/widget/notification_widget.dart';
import 'package:citester/view/screens/dashboard/widget/profile_widget.dart';
import 'package:get/get.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final String menu_icon = 'assets/icons/top/menu_icon.svg';

  final String cart_icon = 'assets/icons/bottom_nav/cart_icon.svg';
  final String home_icon = 'assets/icons/bottom_nav/home_icon.svg';
  final String notification_icon = 'assets/icons/bottom_nav/notification_icon.svg';
  final String profile_icon = 'assets/icons/bottom_nav/profile_icon.svg';


  final ScrollController _scrollController = ScrollController();
  int tabIndex = 0;

  List<String> categories = [
    "Bathing","Safety","Feeding","Toys"
  ];

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
        appBar: AppBar(
          toolbarHeight: 80,
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          //title: Image.asset('assets/icons/gallery_logo.png', width: 200,),
          leading: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(100),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: SvgPicture.asset(
                      menu_icon,
                      colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                      semanticsLabel: ''
                  ),
                ),
              ),
            ],
          ),
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
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(vertical: 0.0),
          decoration: BoxDecoration(
            //border: Border.all(width: 1, color: Colors.grey),
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                spreadRadius: 3,
                offset: const Offset(2, 2),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            if(tabIndex==0)Stack(
              children: [
                Row(
                mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 0.0, top: 4, bottom: 0),
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100, borderRadius: BorderRadius.circular(100),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left:43, top: 8, right: 13, bottom: 8),
                            child: Text("Home", style: robotoBold.copyWith(color: Colors.blue, fontSize: Dimensions.fontSizeLarge),),
                          )),
                    ),
                  ],
                ),

                Container(
                    decoration: BoxDecoration(
                      color: Colors.blue, borderRadius: BorderRadius.circular(100),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                          home_icon,
                          colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                          semanticsLabel: ''
                      ),
                    ))
              ],
            ),
            if(tabIndex!=0)GestureDetector(onTap:()=>setState(()=>tabIndex=0),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: SvgPicture.asset(
                      home_icon,
                      colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
                      semanticsLabel: ''
                  ),
            )),
            if(tabIndex==1)Stack(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0.0, top: 4, bottom: 0),
                        child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blue.shade100, borderRadius: BorderRadius.circular(100),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left:43, top: 8, right: 13, bottom: 8),
                              child: Text("Cart", style: robotoBold.copyWith(color: Colors.blue, fontSize: Dimensions.fontSizeLarge),),
                            )),
                      ),
                    ],
                  ),

                  Container(
                      decoration: BoxDecoration(
                        color: Colors.blue, borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                            cart_icon,
                            colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                            semanticsLabel: ''
                        ),
                      ))
                ],
              ),
            if(tabIndex!=1)GestureDetector(onTap:()=>setState(()=>tabIndex=1), child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: SvgPicture.asset(
                  cart_icon,
                  colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
                  semanticsLabel: ''
              ),
            )),
            if(tabIndex==2)Stack(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0.0, top: 4, bottom: 0),
                        child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blue.shade100, borderRadius: BorderRadius.circular(100),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left:43, top: 8, right: 13, bottom: 8),
                              child: Text("Notification", style: robotoBold.copyWith(color: Colors.blue, fontSize: Dimensions.fontSizeLarge),),
                            )),
                      ),
                    ],
                  ),

                  Container(
                      decoration: BoxDecoration(
                        color: Colors.blue, borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                            notification_icon,
                            colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                            semanticsLabel: ''
                        ),
                      ))
                ],
              ),
            if(tabIndex!=2)GestureDetector(onTap:()=>setState(()=>tabIndex=2), child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: SvgPicture.asset(
                  notification_icon,
                  colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
                  semanticsLabel: ''
              ),
            )),
            if(tabIndex==3)Stack(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0.0, top: 4, bottom: 0),
                        child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blue.shade100, borderRadius: BorderRadius.circular(100),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left:43, top: 8, right: 13, bottom: 8),
                              child: Text("Profile", style: robotoBold.copyWith(color: Colors.blue, fontSize: Dimensions.fontSizeLarge),),
                            )),
                      ),
                    ],
                  ),

                  Container(
                      decoration: BoxDecoration(
                        color: Colors.blue, borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                            profile_icon,
                            colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                            semanticsLabel: ''
                        ),
                      ))
                ],
              ),
            if(tabIndex!=3)GestureDetector(onTap:()=>setState(()=>tabIndex=3), child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: SvgPicture.asset(
                  profile_icon,
                  colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
                  semanticsLabel: ''
              ),
            )),
          ],),
        ),
        body: tabIndex==0?HomeWidget():
              tabIndex==1?CartWidget():
              tabIndex==2?NotificationWidget():
              tabIndex==3?ProfileWidget():Container()
    );
  }
}
