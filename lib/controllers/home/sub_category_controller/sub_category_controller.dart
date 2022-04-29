import 'package:beeanytime/constants/app_libraries.dart';

class SubCategoryController extends GetxController {
  bool isLoading = false;
  String name = '';
  String? imageurl;
  List sub = [];
  final List banners = [
    {"url": "assets/images/Group 65.png"},
    {"url": "assets/images/Group 64.png",},
    {"url": "assets/images/Group 66.png",},
    {"url": "assets/images/Group 67.png",},
    {"url": "assets/images/Group 68.png",},
    {"url": "assets/images/Group 69.png",},
    {"url": "assets/images/Group 63.png",},

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
