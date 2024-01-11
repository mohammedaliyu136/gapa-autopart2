import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:citester/helper/route_helper.dart';
import 'package:citester/util/dimensions.dart';
import 'package:citester/util/styles.dart';
import 'package:get/get.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

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
        /*
        bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          decoration: BoxDecoration(
            //border: Border.all(width: 1, color: Colors.grey),
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                spreadRadius: 3,
                offset: Offset(2, 2),
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
                              padding: const EdgeInsets.only(left:53, top: 8, right: 13, bottom: 8),
                              child: Text("Home", style: robotoBold.copyWith(color: Colors.blue, fontSize: Dimensions.fontSizeExtraLarge),),
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
                        child: Icon(Icons.home, size: 30, color: Colors.white,),
                      ))
                ],
              ),
              if(tabIndex!=0)Icon(Icons.home, size: 30,),
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
                              padding: const EdgeInsets.only(left:53, top: 8, right: 13, bottom: 8),
                              child: Text("Cart", style: robotoBold.copyWith(color: Colors.blue, fontSize: Dimensions.fontSizeExtraLarge),),
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
                        child: Icon(Icons.shopping_cart, size: 30, color: Colors.white,),
                      ))
                ],
              ),
              if(tabIndex!=1)Icon(Icons.shopping_cart, size: 30,),
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
                              padding: const EdgeInsets.only(left:53, top: 8, right: 13, bottom: 8),
                              child: Text("Notification", style: robotoBold.copyWith(color: Colors.blue, fontSize: Dimensions.fontSizeExtraLarge),),
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
                        child: Icon(Icons.notifications, size: 30, color: Colors.white,),
                      ))
                ],
              ),
              if(tabIndex!=2)Icon(Icons.notifications, size: 30,),
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
                              padding: const EdgeInsets.only(left:53, top: 8, right: 13, bottom: 8),
                              child: Text("Profile", style: robotoBold.copyWith(color: Colors.blue, fontSize: Dimensions.fontSizeExtraLarge),),
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
                        child: Icon(Icons.account_circle, size: 30, color: Colors.white,),
                      ))
                ],
              ),
              if(tabIndex!=3)Icon(Icons.account_circle, size: 30,),
            ],),
        ),
        */
        body: Padding(
          padding: const EdgeInsets.only(left: 28, right: 28),
          child: CustomScrollView(
            controller: _scrollController,

            slivers: [
              SliverToBoxAdapter(child: Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Text("My Cart", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeOverLarge),),
              )),
              SliverToBoxAdapter(child: SizedBox(height: 10,)),
              SliverToBoxAdapter(
                child: Column(children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.4,
                    child: ListView(children: [
                      Padding(
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
                              height: 90,
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
                                SizedBox(
                                  width: MediaQuery.of(context).size.width-155,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                    Text("N100", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeExtraLarge),),
                                    Container(decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100),
                                        color: Colors.grey.shade300
                                    ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center ,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 18),
                                            child: Text("-", style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeExtraLarge*2),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(0.0),
                                            child: Text("0", style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeExtraLarge),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 18),
                                            child: Text("+", style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeExtraLarge*1.3),),
                                          ),
                                        ],),
                                    ),
                                  ],),
                                )
                              ],),
                            ),
                          )
                        ],),
                      ),
                      Padding(
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
                              height: 90,
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
                                SizedBox(
                                  width: MediaQuery.of(context).size.width-155,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                    Text("N100", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeExtraLarge),),
                                    Container(decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100),
                                        color: Colors.grey.shade300
                                    ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center ,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 18),
                                            child: Text("-", style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeExtraLarge*2),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(0.0),
                                            child: Text("0", style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeExtraLarge),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 18),
                                            child: Text("+", style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeExtraLarge*1.3),),
                                          ),
                                        ],),
                                    ),
                                  ],),
                                )
                              ],),
                            ),
                          )
                        ],),
                      ),
                      Padding(
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
                              height: 90,
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
                                SizedBox(
                                  width: MediaQuery.of(context).size.width-155,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                    Text("N100", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeExtraLarge),),
                                    Container(decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100),
                                        color: Colors.grey.shade300
                                    ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center ,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 18),
                                            child: Text("-", style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeExtraLarge*2),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(0.0),
                                            child: Text("0", style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeExtraLarge),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 18),
                                            child: Text("+", style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeExtraLarge*1.3),),
                                          ),
                                        ],),
                                    ),
                                  ],),
                                )
                              ],),
                            ),
                          )
                        ],),
                      ),
                    ],),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black.withOpacity(0.3),),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Subtotal:", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeLarge),),
                            Text("N300", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeExtraLarge),),
                          ],
                        ),
                      ),
                      SizedBox(height: 1,child: Container(color: Colors.black.withOpacity(0.3),),),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Shipping:", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeLarge),),
                            Text("N100", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeExtraLarge),),
                          ],
                        ),
                      ),
                      SizedBox(height: 1,child: Container(color: Colors.black.withOpacity(0.3),),),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          children: [
                            Text("Bag Total:", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeLarge),),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text("(3 items)", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeExtraLarge, color: Colors.black.withOpacity(0.3)),),
                            ),
                            Text("N400", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeExtraLarge),),
                          ],
                        ),
                      ),
                  ],),
                    ),),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: GestureDetector(
                      onTap: ()=>Get.toNamed(RouteHelper.getCheckoutRoute()),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),

                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 30),
                          child: Text("Proceed to Checkout", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeLarge, color: Colors.white),),
                        ),),
                    ),
                  )
                ],),
              ),
            ],
          ),
        )
    );
  }
}
