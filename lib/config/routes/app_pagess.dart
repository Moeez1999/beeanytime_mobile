import 'package:beeanytime/config/routes/app_routes.dart';
import 'package:beeanytime/view/category/main_category.dart';
import 'package:beeanytime/view/category/subcategory/sub_category_screen.dart';
import 'package:beeanytime/view/home/home_Screen.dart';
import 'package:beeanytime/view/seeker/seeker_profile.dart';
import 'package:beeanytime/view/seeker/seeker_profile_details_screen.dart';
import 'package:beeanytime/view/splash/splash_screen.dart';

import '../../constants/app_libraries.dart';

class AppPages {
  static var initial = Routes.seekerdetailprofile;
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
  ];
}
