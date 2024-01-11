import 'package:flutter/material.dart';
import 'package:citester/helper/route_helper.dart';
import 'package:citester/util/dimensions.dart';
import 'package:citester/util/styles.dart';
import 'package:get/get.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

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
        ),
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
        body: Padding(
          padding: const EdgeInsets.only(left: 28, right: 28),
          child: CustomScrollView(
            controller: _scrollController,

            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        height: 80,width: 90,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 4.0),
                              child: Text("Gallerycreate", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeLarge),),
                            ),
                            Text("myidentity@gmail.com")
                          ],),
                      )
                    ],),
                  ),),
              ),
              SliverToBoxAdapter(child:SizedBox(height: 30,)),
              SliverToBoxAdapter(
                child: Container(
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
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade50,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(Icons.account_circle),
                                )),
                            SizedBox(width: 20,),
                            Text("Personal Details", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeLarge),),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_outlined)
                          ],
                        ),
                      ),
                      ListTile(
                        onTap: (){
                          print("jsjsk");
                          Get.to(RouteHelper.getOrdersListRoute());
                        },
                        title: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Row(
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue.shade50,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Icon(Icons.shopping_bag_rounded),
                                  )),
                              SizedBox(width: 20,),
                              Text("My Order", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeLarge),),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios_outlined)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade50,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(Icons.favorite_sharp),
                                )),
                            SizedBox(width: 20,),
                            Text("My Favourites", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeLarge),),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_outlined)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade50,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(Icons.local_shipping),
                                )),
                            SizedBox(width: 20,),
                            Text("Shipping Address", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeLarge),),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_outlined)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade50,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(Icons.credit_card),
                                )),
                            SizedBox(width: 20,),
                            Text("My Card", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeLarge),),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_outlined)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade50,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(Icons.settings),
                                )),
                            SizedBox(width: 20,),
                            Text("Settings", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeLarge),),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_outlined)
                          ],
                        ),
                      ),
                    ],),
                  ),),
              ),
              SliverToBoxAdapter(child:SizedBox(height: 30,)),
              SliverToBoxAdapter(
                child: Container(
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
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade50,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(Icons.info),
                                )),
                            SizedBox(width: 20,),
                            Text("FAQ", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeLarge),),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_outlined)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade50,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(Icons.security_rounded),
                                )),
                            SizedBox(width: 20,),
                            Text("Privacy Policy", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeLarge),),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_outlined)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade50,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(Icons.info),
                                )),
                            SizedBox(width: 20,),
                            Text(
                              "Terms and Conditions", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeLarge),),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_outlined)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade50,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(Icons.info),
                                )),
                            SizedBox(width: 20,),
                            Text("About us", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeLarge),),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_outlined)
                          ],
                        ),
                      ),
                    ],),
                  ),),
              ),
              SliverToBoxAdapter(child:SizedBox(height: 50,)),
            ],
          ),
        )
    );
  }
}
