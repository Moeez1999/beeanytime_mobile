import '../../constants/app_libraries.dart';

class CreateBussinessProfileController extends GetxController {
  bool isLoading = false;
  bool isVATRegistered = false;
  TextEditingController address = TextEditingController();
  TextEditingController servicedetail = TextEditingController();
   TextEditingController servicetitle = TextEditingController();
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
