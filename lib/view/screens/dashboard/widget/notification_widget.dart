import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:citester/helper/route_helper.dart';
import 'package:citester/util/dimensions.dart';
import 'package:citester/util/styles.dart';
import 'package:get/get.dart';

class NotificationWidget extends StatefulWidget {
  @override
  State<NotificationWidget> createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text("Notifications", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeOverLarge),),
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index){
                  return const Padding(
                    padding: EdgeInsets.symmetric(vertical: 18.0),
                    child: Text("Items is being delivered"),
                  );
                },
                separatorBuilder: (context, index){
                  return SizedBox(height: 1,child: Container(color: Colors.grey.shade300,),);
                },
                itemCount: 10),
          ),
        ],
      ),
    );
  }
}
