import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:citester/helper/route_helper.dart';
import 'package:citester/util/dimensions.dart';
import 'package:citester/util/styles.dart';
import 'package:citester/view/screens/onboarding_screen.dart';
import 'package:get/get.dart';

import 'onboarding_screen.dart';
class OnboardingModel{
  final String title,image,description;
  OnboardingModel({
    required this.title,required this.image, required this.description
});
}
final List<OnboardingModel> listOnboarding = [
  OnboardingModel(
      title: '20% Discount\nNew Arrival Product',
      image: 'assets/onboarding/walk_1.png',
      description: 'Lorem ipsum dolor sit amet consectetur. Facilisis felis sed vel non magna quam .'),
  OnboardingModel(
      title: 'Take Advantage\nOf The Offer Shopping',
      image: 'assets/onboarding/walk_2.png',
      description: 'Lorem ipsum dolor sit amet consectetur. Facilisis felis sed vel non magna quam .'),
  OnboardingModel(
      title: 'All Type Offers\nWithin Your Reach',
      image: 'assets/onboarding/walk_3.png',
      description: 'Lorem ipsum dolor sit amet consectetur. Facilisis felis sed vel non magna quam .'),
];
class OnboardingScreen extends StatefulWidget {

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  String arrow_icon = "assets/icons/top/arrow_icon.svg";
  late PageController pageController;
  int pageIndex = 1;
  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: listOnboarding.length,
              controller: pageController,
              onPageChanged: (val){
                setState(() {
                  pageIndex=val+1;
                });
              },
              itemBuilder: (context, index) {
                return OnboardingScreenContext(listOnboarding[index]);
              }
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 20),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: pageIndex==1?Container(decoration: BoxDecoration(color: Colors.blue, borderRadius:BorderRadius.circular(50),), width: 40, height: 10,):Container(decoration: BoxDecoration(color: Colors.blue.shade100, shape: BoxShape.circle,), width: 10, height: 10,),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: pageIndex==2?Container(decoration: BoxDecoration(color: Colors.blue, borderRadius:BorderRadius.circular(50),), width: 40, height: 10,):Container(decoration: BoxDecoration(color: Colors.blue.shade100, shape: BoxShape.circle,), width: 10, height: 10,),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: pageIndex==3?Container(decoration: BoxDecoration(color: Colors.blue, borderRadius:BorderRadius.circular(50),), width: 40, height: 10,):Container(decoration: BoxDecoration(color: Colors.blue.shade100, shape: BoxShape.circle,), width: 10, height: 10,),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: GestureDetector(
                      onTap: (){
                        print("djjdkj");
                        if(pageIndex==3){
                          Get.toNamed(RouteHelper.getLoginOrSignupRoute());
                        }else{
                          pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.ease);
                        }
                        },
                      child: Container(decoration: BoxDecoration(color: Colors.blue, shape: BoxShape.circle,), width: 60, height: 60,
                        child: SvgPicture.asset(
                            arrow_icon,
                            colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                            semanticsLabel: ''
                        ),)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
class OnboardingScreenContext extends StatelessWidget {
  OnboardingModel onboardingModel;

  OnboardingScreenContext(this.onboardingModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Image.asset(onboardingModel.image, width: MediaQuery.of(context).size.width,),
              //Image.asset("assets/onboarding/walk_1-.png", width: MediaQuery.of(context).size.width,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Text(onboardingModel.title, style: robotoBold.copyWith(fontSize: Dimensions.fontSizeExtraLarge*1.5),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 20),
                child: Text(onboardingModel.description, style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeDefault, height: 1.5),),
              ),
            ],),
          ),
        )
    );
  }
}
