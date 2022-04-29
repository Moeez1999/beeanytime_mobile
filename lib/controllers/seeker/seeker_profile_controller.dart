import 'package:beeanytime/constants/app_libraries.dart';

class SeekerProfileControler extends GetxController {
  bool isLoading = false;
  double rating = 0.0;
  double value = 0.5;
   int radioValue = 0;
   String selectedrating = 'High to Low';
   String selectedprice = 'Low to High';
    void handleRadioValueChange(int value) {
    
      radioValue = value;
      update();

      switch (radioValue) {
        case 0:
          break;
        case 1:
          break;
        case 2:
          break;
      }
    }
    final List data = [
    {
      "nanem": "Moeez Suleman",
      "location": "Lahore,Pakistan",
      "Response": "8 ",
      "Distance": "80",
      "Price": "1000"
    },
    {
      "nanem": "Aleem",
      "location": "Lahore,Pakistan",
      "Response": "8 ",
      "Distance": "80",
      "Price": "1000"
    },
    {
      "nanem": "Moeez Suleman",
      "location": "Lahore,Pakistan",
      "Response": "8",
      "Distance": "80",
      "Price": "1000"
    },
    {
      "nanem": "Moeez Suleman",
      "location": "Lahore,Pakistan",
      "Response": "8",
      "Distance": "80",
      "Price": "1000"
    }
  ];
  }
  

