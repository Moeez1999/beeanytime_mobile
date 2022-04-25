import 'package:beeanytime/constants/app_libraries.dart';

class SubCategoryController extends GetxController {
  bool isLoading = false;
  String name = '';
  var imageurl = '';
  final List banners = [
    {"url": "assets/images/banner1.png"},
    {"url": "assets/images/banner2.png"},
  ];
  var data = Get.arguments;
  @override
  void onInit() {
    // if (Get.arguments != null) {
    //   print('Email is ${Get.arguments}');
    //   name = Get.arguments;
    //   update();
    // }
    print(data);
    name = data['name'];
    imageurl = data['url'];

    super.onInit();
  }
}
