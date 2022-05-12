import 'package:beeanytime/constants/app_libraries.dart';

class CreateServicesController extends GetxController {
  bool isLoading = false;
  TextEditingController requestDescription = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController dateinput = TextEditingController();
  List dropDownList = [];
  bool isDateShown = false;
  bool hideAddress = false;
  bool isAddressShown = false;
  String selectedrating = 'ASAP';
  @override
  void onInit() {
    isAddressShown = true;
    dropDownList = [
      {
        "name": '25 Suffolk Street',
      },
      {
        "name": 'Lahore Pakistan',
      },
    ];
    super.onInit();
  }
}
