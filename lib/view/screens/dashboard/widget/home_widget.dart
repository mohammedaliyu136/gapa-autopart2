import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:citester/helper/route_helper.dart';
import 'package:citester/util/dimensions.dart';
import 'package:citester/util/styles.dart';
import 'package:get/get.dart';

class HomeWidget extends StatefulWidget {
  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {

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
          SliverToBoxAdapter(child: Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: Text("Welcome,", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeOverLarge),),
          )),
          SliverToBoxAdapter(child: SizedBox(height: 10,)),
          SliverToBoxAdapter(child: Text("Our Fashions App", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeOverLarge, color: Colors.grey),)),
          SliverToBoxAdapter(child: SizedBox(height: 18,)),
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
          SliverToBoxAdapter(child: Padding(
            padding: const EdgeInsets.only(top: 18.0, bottom: 6),
            child: Text("Categories", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeOverLarge),),
          )),


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
                        child: Text(categories[index], style: robotoBold.copyWith(color: index==1?Colors.white:Colors.black, fontSize: Dimensions.fontSizeLarge),),
                      ),),
                  );
                }), height: 40,),
          ),

          SliverToBoxAdapter(child: Padding(
            padding: const EdgeInsets.only(top: 18.0, bottom: 6),
            child: Text("Top Products", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeOverLarge),),
          )),
          SliverToBoxAdapter(child: StaggeredGridView.countBuilder(
            itemCount: 5,
            crossAxisCount: 2,
            padding: const EdgeInsets.all(0),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            staggeredTileBuilder: (int index) => const StaggeredTile.fit(1),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: ()=>Get.toNamed(RouteHelper.getProductDetailRoute()),
                child: Padding(
                  padding: const EdgeInsets.only(top:8.0, bottom: 8, right: 18),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 180,width: 180,
                        decoration: BoxDecoration(color: Colors.blue,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.blue)

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text("Baby Bathtub", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeLarge),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text("Products brand/info", style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeDefault),),
                      ),
                      Text("N100", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeLarge),),
                      SizedBox(height: 5,)
                    ],
                  ),
                ),
              );
            },
          ),)
          /*
                Text("New Arrivals", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeOverLarge),),
                Text("Popular", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeOverLarge),),
               */
        ],
      ),
    );
  }
}