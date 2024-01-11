import 'package:flutter/material.dart';
import 'package:citester/helper/route_helper.dart';
import 'package:citester/util/dimensions.dart';
import 'package:citester/util/styles.dart';
import 'package:get/get.dart';

class DashedLineVerticalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double dashHeight = 5, dashSpace = 3, startY = 0;
    final paint = Paint()
      ..color = Colors.grey[300]!
      ..strokeWidth = size.width;
    while (startY < size.height) {
      canvas.drawLine(Offset(0, startY), Offset(0, startY + dashHeight), paint);
      startY += dashHeight + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class OrderDetailsScreen extends StatefulWidget {
  @override
  _OrderDetailsScreenState createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  List<Step> stepList() => [
    const Step(title: Text('Account'), content: Center(child: Text('Account'),)),
    const Step(title: Text('Address'), content: Center(child: Text('Address'),)),
    const Step(title: Text('Confirm'), content: Center(child: Text('Confirm'),))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Image.asset('assets/icons/gallery_logo.png', width: 200,),
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
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              Image.asset('assets/icons/_x3C_Layer_x3E__copy.png')
            ],),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24, ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text("Order Details", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView(children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(
                              left: BorderSide(
                                color: Colors.blue,
                                width: 4.0,
                              ),
                            ),
                            color: Colors.blue.shade50,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 4.0),
                                      child: Text("Pickup Location", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeDefault),),
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 4.0),
                                      child: Text("Today 14:00 am", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeDefault),),
                                    ),
                                  ],
                                ),
                                Text("5 O.P. Fingesi Road, Utako ", style: robotoRegular),

                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Row(children: [
                                    Icon(Icons.book_online),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Order 4683893883983", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeDefault),),
                                        SizedBox(height: 4,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text("Weight ", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeDefault),),
                                            Text("7.5 Kg", style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeDefault),),
                                          ],
                                        ),
                                      ],)
                                  ],),
                                ),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Text("Status :", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeDefault),)),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Text("On route to delivery", style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeDefault),)),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 4.0),
                                  child: Text("Drop Off Location", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                ),
                                Text("5 uyo street, Gwarimpa Housing Estate , 3rd avenue, War college.", style: robotoRegular),

                              ],
                            ),
                          ),),
                      ),

                      SizedBox(height: 20,),

                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(
                              left: BorderSide(
                                color: Colors.blue,
                                width: 4.0,
                              ),
                            ),
                            color: Colors.blue.shade50,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Text("Customer Name :  Nsikak Nelson", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeDefault),),
                              ),
                              Row(
                                children: [
                                  Text("Mobile Number :  ", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeDefault),),
                                  Text("0802773748894", style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeDefault),),
                                ],
                              )
                            ],),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(28.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue, width: 1.5)
                              ),
                              child: TextButton(
                                onPressed: (){
                                  Get.toNamed(RouteHelper.getSuccessRoute());
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                                  child: Text("Confirm Delivery", style: robotoBold,),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],),
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
}
