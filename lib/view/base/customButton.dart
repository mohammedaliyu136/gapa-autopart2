
import 'package:flutter/material.dart';
import 'package:citester/util/dimensions.dart';
import 'package:citester/util/styles.dart';

class CustomButton extends StatelessWidget {
  CustomButton({required this.text, required this.tap, required this.color, this.isOutline=false, this.icon});
  String text;
  Function() tap;
  Color color;
  bool isOutline;
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: TextButton(onPressed: tap, child: Row(
        children: [
          Expanded(
            child: Container(
                decoration: BoxDecoration(color: isOutline?Colors.transparent:color,
                  borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: isOutline?color:Colors.transparent)

                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  child: isOutline?Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if(icon!=null)Icon(icon),
                      if(icon!=null)SizedBox(width: 10,),
                      Text(text, style: robotoBold.copyWith(fontSize: Dimensions.fontSizeLarge, color: color),textAlign: TextAlign.center,),
                    ],
                  ):Text(text, style: robotoBold.copyWith(fontSize: Dimensions.fontSizeLarge, color: Colors.white),textAlign: TextAlign.center,),
                )),
          ),
        ],
      )),
    );
  }
}
