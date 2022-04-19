import 'package:beeanytime/constants/app_libraries.dart';

class MainCategoryController extends GetxController {
  bool isLoading = false;

  TextEditingController search = TextEditingController();
  final List data = [
    {"url": "assets/images/banner1.png"},
    {"url": "assets/images/banner2.png"},
  ];

  final List mainCategories = [
    {
      'name': 'Trades People',
      'url': AppAssets.trade,
    },
    {
      'name': 'Delivery & Removals',
      'url': AppAssets.delivery,
    },
    {
      'name': 'Hair & Beauty',
      'url': AppAssets.hair,
    },
    {
      'name': 'Food & Beverage',
      'url': AppAssets.food,
    },
    {
      'name': 'Home & Care',
      'url': AppAssets.home,
    },
    {
      'name': 'Sports & Leisure',
      'url': AppAssets.sports,
    },
    {
      'name': 'Events & Hospitality',
      'url': AppAssets.events,
    },
    {
      'name': 'Cleaning',
      'url': AppAssets.cleaning,
    },
    {
      'name': 'Tuition & Lessons',
      'url': AppAssets.tutions,
    },
    {
      'name': 'Pet Care',
      'url': AppAssets.pets,
    },
    {
      'name': 'Event Stalls & Spaces',
      'url': AppAssets.stalls,
    },
    {
      'name': 'Community & Partnerships',
      'url': AppAssets.community,
    },
    {
      'name': 'Health & Well-Being',
      'url': AppAssets.health,
    },
    {
      'name': 'Parenting & 0-5 Years',
      'url': AppAssets.parent,
    },
    {
      'name': 'Artisan & Homeware',
      'url': AppAssets.homeware,
    },
    {
      'name': 'Local Events',
      'url': AppAssets.localevents,
    },
    {
      'name': 'IT & Digital Design',
      'url': AppAssets.it,
    },
    {
      'name': 'Packaging & Printing',
      'url': AppAssets.packaging,
    },
    {
      'name': 'Repair & Service',
      'url': AppAssets.repair,
    },
  ];
}
