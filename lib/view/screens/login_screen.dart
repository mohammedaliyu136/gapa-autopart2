import 'package:flutter/material.dart';
import 'package:citester/helper/route_helper.dart';
import 'package:citester/util/dimensions.dart';
import 'package:citester/util/styles.dart';
import 'package:citester/view/base/customButton.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

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
        body: SafeArea(
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Image.asset('assets/icons/gallery_logo.png'),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 0),
                  child: Row(
                    children: [
                      Text("Welcome!", style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeOverLarge*1.3),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 4),
                  child: Row(
                    children: [
                      Text("Please login or signup to continue", style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeDefault),),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 8),
                  child: Row(
                    children: [
                      Text("Email Address", style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeLarge),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 38.0),
                  child: TextField(
                    style:robotoRegular.copyWith(fontSize: Dimensions.fontSizeLarge),
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.mail_outline, color: Colors.black,),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 1, color: Colors.black), //<-- SEE HERE
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 8),
                  child: Row(
                    children: [
                      Text("Password", style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeLarge),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 38.0),
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.key_outlined, color: Colors.black,),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 1, color: Colors.black), //<-- SEE HERE
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 38.0),
                  child: Row(children: [
                    Checkbox(value: true, onChanged: (val){}), Text("Remember Me", style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeDefault),),
                    Spacer(),
                   Text("Forgot Password?", style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeDefault),),
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: CustomButton(text: 'Login', tap: () {  }, color: Colors.blue,),
                ),
                Text("OR", style: TextStyle(fontWeight: FontWeight.bold),),
                  CustomButton(text: 'Continue with Facebook', tap: () {  }, color: Colors.black, isOutline: true, icon: Icons.facebook),
                  CustomButton(text: 'Continue with Google', tap: () {  }, color: Colors.black, isOutline: true,),
                  CustomButton(text: 'Continue with Apple', tap: () {  }, color: Colors.black, isOutline: true, icon: Icons.apple),
              ],),
            ],
          ),
        )
    );
  }
}
