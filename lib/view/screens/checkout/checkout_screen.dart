import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:citester/helper/route_helper.dart';
import 'package:citester/util/dimensions.dart';
import 'package:citester/util/styles.dart';
import 'package:get/get.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class CheckoutScreen extends StatefulWidget {
  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {

  String back_icon = "assets/icons/top/back_icon.svg";
  final ScrollController _scrollController = ScrollController();
  int tabIndex = 3;

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
          //toolbarHeight: 100,
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          //title: Image.asset('assets/icons/gallery_logo.png', width: 200,),
          leading: GestureDetector(
            onTap: ()=>Get.back(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(100),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                      back_icon,
                      colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                      semanticsLabel: ''
                  ),
                ),
              ),
            ),
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
        body: Padding(
          padding: const EdgeInsets.only(left: 28, right: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Text("Delivery Address", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeOverLarge),),
              ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black.withOpacity(0.3),),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Text("Street: ", style: robotoBold,),
                            Text("24, I.T Igbani Street,"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Text("City: ", style: robotoBold,),
                            Text("Jabi, Abuja"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Text("State: ", style: robotoBold,),
                            Text("F.C.T"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Text("Phone number: ", style: robotoBold,),
                            Text("080123456789"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Text("Country: ", style: robotoBold,),
                            Text("Nigeria"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(top: 28.0, bottom: 10),
                child: Text("Product Items", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeExtraLarge),),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Row(children: [
                      Container(
                        height: 90, width: 90,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: SizedBox(
                          height: 70,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Baby Shoe", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeExtraLarge),),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 4.0),
                                child: Text("Products brand/info", style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeDefault),),
                              ),
                              Spacer(),
                              Text("N100", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeExtraLarge),)
                            ],),
                        ),
                      )
                    ],),
                  );
                }),
              ),
              SizedBox(height: 10,),
              Text("Promo Code", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeExtraLarge),),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black.withOpacity(0.3),),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 50,width: 50,
                        child: Icon(Icons.bookmark_outlined, color: Colors.white,),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Add Promo Code", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeLarge),),
                        Text("#Welcome"),
                      ],)
                  ],),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Total Price"),
                        Text("N300", style: robotoBold,),
                      ],
                    ),
                    GestureDetector(
                      onTap: ()=>Get.toNamed(RouteHelper.getCheckoutRoute()),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(100),

                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 30),
                          child: Text("Place Order", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeLarge, color: Colors.white),),
                        ),),
                    )

                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}
