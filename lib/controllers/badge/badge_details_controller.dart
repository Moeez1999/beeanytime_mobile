import '../../constants/app_libraries.dart';

class BAdgeDetailsController extends GetxController {
  bool isLoading = false;
  TextEditingController address = TextEditingController();
  List dropDownList = [];
  @override
  void onInit() {
    dropDownList = [
      {
        "id": '1',
        "name": 'Lahore Pakistan',
      },
      {
        "id": '2',
        "name": 'Jumerah Beach Duabi',
      },
    ];
    super.onInit();
  }
}
