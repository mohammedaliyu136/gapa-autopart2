import 'package:flutter/material.dart';
import 'package:citester/helper/route_helper.dart';
import 'package:citester/util/dimensions.dart';
import 'package:citester/util/styles.dart';
import 'package:citester/view/base/customButton.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

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
                      padding: const EdgeInsets.all(25.0),
                      child: Image.asset('assets/icons/gallery_logo.png', width: 200,),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 0),
                    child: Row(
                      children: [
                        Text("Sign Up", style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeOverLarge*1.3),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 4),
                    child: Row(
                      children: [
                        Text("Create a new account", style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeDefault),),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 8),
                    child: Row(
                      children: [
                        Text("User Name", style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeLarge),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 38.0),
                    child: TextField(
                      style:robotoRegular.copyWith(fontSize: Dimensions.fontSizeLarge),
                      decoration: InputDecoration(
                        //suffixIcon: Icon(Icons.mail_outline, color: Colors.black,),
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
                    padding: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 8),
                    child: Row(
                      children: [
                        Text("Confirm Password", style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeLarge),),
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
                    child: CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        value: true, onChanged: (val){}, title: Text("By creating an account you have to agreed with our terms and conditions ", style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeDefault),)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: CustomButton(text: 'Sign Up', tap: ()=>Get.toNamed(RouteHelper.getRegistrationSuccessfulRoute()), color: Colors.blue,),
                  ), ],),
            ],
          ),
        )
    );
  }
}
