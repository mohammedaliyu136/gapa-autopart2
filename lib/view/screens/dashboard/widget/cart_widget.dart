import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:citester/helper/route_helper.dart';
import 'package:citester/util/dimensions.dart';
import 'package:citester/util/styles.dart';
import 'package:get/get.dart';

class CartWidget extends StatefulWidget {
  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {

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
    return Padding(
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
                child: ListView.separated(
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
                      );
                    },
                    separatorBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: SizedBox(height: 1,child: Container(color: Colors.grey.shade300,),),
                      );
                    },
                    itemCount: 3),
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
    );
  }
}
