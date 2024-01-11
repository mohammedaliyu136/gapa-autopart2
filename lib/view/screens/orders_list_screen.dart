import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:citester/helper/route_helper.dart';
import 'package:citester/util/dimensions.dart';
import 'package:citester/util/styles.dart';
import 'package:get/get.dart';

class OrdersListScreen extends StatefulWidget {
  @override
  _OrdersListScreenState createState() => _OrdersListScreenState();
}

class _OrdersListScreenState extends State<OrdersListScreen> {


  final String menu_icon = 'assets/icons/top/menu_icon.svg';
  final String filter_icon = 'assets/icons/top/filter_icon.svg';
  final String back_icon = 'assets/icons/top/back_icon.svg';



  final ScrollController _scrollController = ScrollController();


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
                  //scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: index==1?Colors.blue:Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
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
                  }), height: 700,),
            ),
          ],
        ),
      ),
    );
  }
}
