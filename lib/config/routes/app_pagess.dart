import 'package:beeanytime/config/routes/app_routes.dart';
import 'package:beeanytime/view/services/add_service_provider_screen.dart';
import 'package:beeanytime/view/services/service_detail_screen.dart';
import 'package:beeanytime/view/category/main_category.dart';
import 'package:beeanytime/view/category/subcategory/sub_category_screen.dart';
import 'package:beeanytime/view/home/home_Screen.dart';
import 'package:beeanytime/view/seeker/seeker_profile.dart';
import 'package:beeanytime/view/seeker/seeker_profile_details_screen.dart';
import 'package:beeanytime/view/services/add_address_detail_screen.dart';
import 'package:beeanytime/view/services/add_address_screen.dart';
import 'package:beeanytime/view/services/create_services_screen.dart';
import 'package:beeanytime/view/splash/splash_screen.dart';

import '../../constants/app_libraries.dart';

class AppPages {
  static var initial = Routes.addserviceprovider;
  static final routes = [
    // <------ Splash Routes --------->
    GetPage(
      name: Routes.splash,
      page: () => const SplashScreen(),
    ),

    // <------ Home Routes --------->
    GetPage(
      name: Routes.home,
      page: () => const HommeScreen(),
    ),

    // <------ Main Category Routes --------->
    GetPage(
      name: Routes.maincategory,
      page: () => const MainCategory(),
    ),

    // <------ Sub Category Routes --------->
    GetPage(
      name: Routes.subcategory,
      page: () => const SubCategoryScreen(),
    ),

    // <------ Seeker Profile Routes --------->
    GetPage(
      name: Routes.seekerprofile,
      page: () => const SeekerProfileScreen(),
    ),


    // <------ Seeker Profile Details Routes --------->
    GetPage(
      name: Routes.seekerdetailprofile,
      page: () => const SeekerProfileDetailsScreen(),
    ),

    // <------ Create Services Routes --------->
    GetPage(
      name: Routes.createservices,
      page: () => const CreateServices(),
    ),


     // <------ Create Address Routes --------->
    GetPage(
      name: Routes.createaddress,
      page: () => const CreateAddress(),
    ),


     // <------ Add Address Details  Routes --------->
    GetPage(
      name: Routes.addaddressdetails,
      page: () => const AddAddressDetailsScreen(),
    ),

     // <------ Service Details  Routes --------->
    GetPage(
      name: Routes.servicedetails,
      page: () => const ServiceDetail(),
    ),

         // <------ Add Service Provider Routes --------->
    GetPage(
      name: Routes.addserviceprovider,
      page: () => const AddServiceProvider(),
    ),
  ];
}
