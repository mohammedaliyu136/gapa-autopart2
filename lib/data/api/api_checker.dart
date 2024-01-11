import 'package:get/get.dart';
import 'package:citester/controller/auth_controller.dart';

class ApiChecker {
  static void checkApi(Response response) {
    if(response.statusCode == 401) {
      //Get.find<WishListController>().removeWishes();
      //Get.offAllNamed(RouteHelper.getSignInRoute(RouteHelper.splash));
    }else {
      //showCustomSnackBar(response.statusText!);
    }
  }
}
