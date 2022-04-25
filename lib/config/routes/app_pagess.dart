import 'package:beeanytime/config/routes/app_routes.dart';
import 'package:beeanytime/view/category/main_category.dart';
import 'package:beeanytime/view/category/subcategory/sub_category_screen.dart';
import 'package:beeanytime/view/home/home_Screen.dart';
import 'package:beeanytime/view/splash/splash_screen.dart';

import '../../constants/app_libraries.dart';

class AppPages {
  static var initial = Routes.maincategory;
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
  ];
}
