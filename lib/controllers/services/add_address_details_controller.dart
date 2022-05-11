import 'package:beeanytime/constants/app_libraries.dart';

class AddAddressDetailController extends GetxController {
  bool isLoading = false;
  TextEditingController area = TextEditingController();
  TextEditingController filaddress = TextEditingController();
  TextEditingController postcode = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController country = TextEditingController();
  bool hideAddress = false;
}
