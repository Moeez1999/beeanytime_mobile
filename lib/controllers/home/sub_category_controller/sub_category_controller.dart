import 'package:beeanytime/constants/app_libraries.dart';

class SubCategoryController extends GetxController {
  bool isLoading = false;
  String name = '';
  String? imageurl;
  List sub = [];
  final List banners = [
    {"url": "assets/images/banner1.png"},
    {"url": "assets/images/banner2.png"},
  ];
  var data = Get.arguments;
  @override
  void onInit() {
    if (Get.arguments != null) {
      print('Data from previous screen is ${Get.arguments}');
      name = Get.arguments['name'].toString();
      imageurl = Get.arguments['image'].toString();
      sub = Get.arguments['sub'];

      print("Image url is " + imageurl.toString());
      update();

      super.onInit();
    }
  }
}
