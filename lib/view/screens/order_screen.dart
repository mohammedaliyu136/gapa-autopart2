import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:citester/helper/route_helper.dart';
import 'package:citester/util/dimensions.dart';
import 'package:citester/util/styles.dart';
import 'package:get/get.dart';

class OrderScreen extends StatefulWidget {
  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {

  final String menu_icon = 'assets/icons/top/menu_icon.svg';
  final String filter_icon = 'assets/icons/top/filter_icon.svg';


  final ScrollController _scrollController = ScrollController();


  List<String> categories = [
    "Bathing","Safety","Feeding","Toys"
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28, right: 28),
      child: CustomScrollView(
        controller: _scrollController,

        slivers: [
          SliverToBoxAdapter(
            child: Row(children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50, borderRadius: BorderRadius.circular(100),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 18),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, color: Colors.blue,),
                        //labelText: 'Search...',
                        hintText: 'Search...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(100),
                ),
                child: Padding(//filter_icon
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(
                      filter_icon,
                      colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                      semanticsLabel: ''
                  ),
                ),
              ),
            ],),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 18,)),
          SliverToBoxAdapter(child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black.withOpacity(0.3),),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(children: [
              Row(children: [
                Icon(Icons.ac_unit),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                  Text("1234 123456 3456"),
                  Text("Gellery baby Express"),
                ],),
                Text("Transit")
              ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("25 June, 2023"),
                    Text("Abuja"),
                  ],),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("25 June, 2023"),
                    Text("Abuja"),
                  ],)
              ],)
            ],),
          )),
          SliverToBoxAdapter(child: Text("Tracking", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeOverLarge, color: Colors.grey),)),
          SliverToBoxAdapter(
            child: SizedBox(child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: index==1?Colors.blue:Colors.transparent,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.blue.shade300)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 28),
                        child: Row(
                          children: [
                            Container(height: 70,width: 70,),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("NG 1234273778393", style: robotoBold.copyWith(color: index==1?Colors.white:Colors.black, fontSize: Dimensions.fontSizeLarge),),
                                Text("Abeokuta", style: robotoBold.copyWith(color: index==1?Colors.white:Colors.black, fontSize: Dimensions.fontSizeLarge),),
                              ],
                            ),
                            Text("Delivered", style: robotoBold.copyWith(color: index==1?Colors.white:Colors.black, fontSize: Dimensions.fontSizeLarge),),
                          ],
                        ),
                      ),),
                  );
                }), height: 40,),
          ),
        ],
      ),
    );
  }
}