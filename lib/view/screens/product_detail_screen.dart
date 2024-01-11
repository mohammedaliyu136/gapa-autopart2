import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:citester/helper/route_helper.dart';
import 'package:citester/util/dimensions.dart';
import 'package:citester/util/styles.dart';
import 'package:get/get.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class ProductDetailScreen extends StatefulWidget {
  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {

  final String back_icon = 'assets/icons/top/back_icon.svg';

  final ScrollController _scrollController = ScrollController();

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
        bottomNavigationBar: Container(
          padding: const EdgeInsets.only(bottom: 20.0, top: 10),
          decoration: BoxDecoration(
            //border: Border.all(width: 1, color: Colors.grey),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Total Price"),
                  Text("N100.00", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeExtraLarge),),
                ],),
                GestureDetector(
                  onTap: ()=>Get.toNamed(RouteHelper.getCartRoute()),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30),

                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 30),
                      child: Row(children: [Icon(Icons.shopping_bag, color: Colors.white,), SizedBox(width: 10,),Text("Add to Cart", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeLarge, color: Colors.white),)],),
                    ),),
                )
              ],),
          ),
        ),
        body: Stack(
          children: [
            Container(height: 350, width: MediaQuery.of(context).size.width, color: Colors.grey,),

            CustomScrollView(
              controller: _scrollController,

              slivers: [
                SliverToBoxAdapter(child: Container(height: 300, width: MediaQuery.of(context).size.width, color: Colors.transparent,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 28.0),
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.favorite_border, color: Colors.white,),
                    )),
                  ),),
                )),
                SliverToBoxAdapter(child: Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: Container(
                      decoration: BoxDecoration(
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
                      child: Padding(
                        padding: const EdgeInsets.all(28.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Baby Shoe", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeExtraLarge),),
                                    Text("Products brand/info", style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeExtraLarge),),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2.0),
                                      child: Row(children: [
                                        Padding(
                                          padding: const EdgeInsets.all(1.0),
                                          child: Icon(Icons.star, color: Colors.grey, size: 20,),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(1.0),
                                          child: Icon(Icons.star, color: Colors.grey, size: 20,),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(1.0),
                                          child: Icon(Icons.star, color: Colors.grey, size: 20,),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(1.0),
                                          child: Icon(Icons.star, color: Colors.grey, size: 20,),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(1.0),
                                          child: Icon(Icons.star, color: Colors.grey, size: 20,),
                                        ),
                                        Text(" (320 Reviews)")
                                      ],),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.grey.shade300
                                    ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center ,
                                          children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 18),
                                            child: Text("-", style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeExtraLarge*2),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text("0", style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeExtraLarge),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 18),
                                            child: Text("+", style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeExtraLarge*1.3),),
                                          ),
                                        ],),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text("Available in Stock", style: robotoBold,),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text("Description", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeLarge),),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text("Lorem ipsum dolor sit amet consectetur. In in tellus cras suspendisse vitae placerat. Imperdiet fermentum pharetra amet id eget suscipit.", style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeDefault),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text("Size", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeLarge),),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0),
                              child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(200),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                                      child: Text(" 20 ", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeExtraLarge),),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(200),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                                      child: Text(" 22 ", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeExtraLarge),),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(200),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                                      child: Text(" 24 ", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeExtraLarge),),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(200),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                                      child: Text(" 25 ", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeExtraLarge),),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(200),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                                      child: Text(" 30 ", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeExtraLarge),),
                                    ),
                                  ),
                                ),
                                Icon(Icons.arrow_forward_ios_outlined)
                              ],),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text("Color", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeLarge),),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0),
                              child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(200),
                                      color: Colors.blue
                                    ),
                                    height: 30,width: 30,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(200),
                                        color: Colors.red
                                    ),
                                    height: 30,width: 30,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(200),
                                        color: Colors.green
                                    ),
                                    height: 30,width: 30,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(200),
                                        color: Colors.purple
                                    ),
                                    height: 30,width: 30,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(200),
                                        color: Colors.amber
                                    ),
                                    height: 30,width: 30,
                                  ),
                                ),
                                Icon(Icons.arrow_forward_ios_outlined)
                              ],),
                            ),
                            SizedBox(height: 700,)
                          ],
                        ),
                      )),
                )),
                SliverToBoxAdapter(child: SizedBox(height: 10,)),
              ],
            ),
          ],
        )
    );
  }
}
