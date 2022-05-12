import 'package:beeanytime/constants/app_libraries.dart';

class AddServiceProviderController extends GetxController {
  bool isLoading = false;
  TextEditingController address = TextEditingController();
  TextEditingController servicetitle = TextEditingController();
  TextEditingController servicedetail = TextEditingController();
  bool enableService = false;
  bool hideAddress = false;
  double value = 1.0;
  bool applyCancellationCharges = false;
  bool applyBussinessProfile = false;
  bool callOutCharges = false;
  List dropDownList = [];
  String selectedrating = 'Start At';
  bool isStartAt = false;
  bool isFixed = false;
  bool isFree = false;
  bool isvaries = false;
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
