import 'package:beeanytime/constants/app_libraries.dart';

class MainCategoryController extends GetxController {
  bool isLoading = false;

  TextEditingController search = TextEditingController();
  final List data = [
    {"url": "assets/images/Group 65.png"},
    {"url": "assets/images/Group 64.png",},
    {"url": "assets/images/Group 66.png",},
    {"url": "assets/images/Group 67.png",},
    {"url": "assets/images/Group 68.png",},
    {"url": "assets/images/Group 69.png",},
    {"url": "assets/images/Group 63.png",},

  ];

  final List mainCategories = [
    {
      'name': 'Trades People',
      'url': AppAssets.trade,
      'subcategory': [
        {
          'subname': 'Sub1',
          "suburl": AppAssets.sub1,
        },
        {
          'subname': 'Sub2',
          "suburl": AppAssets.sub2,
        },
        {
          'subname': 'Sub3',
          "suburl": AppAssets.sub3,
        },
        {
          'subname': 'Sub4',
          "suburl": AppAssets.sub4,
        },
        {
          'subname': 'Sub5',
          "suburl": AppAssets.sub5,
        },
        {
          'subname': 'Sub6',
          "suburl": AppAssets.sub8,
        },
        {
          'subname': 'Sub7',
          "suburl": AppAssets.sub7,
        }
      ]
    },
    //--------- 2 main -------------------
    {
      'name': 'Delivery & Removals',
      'url': AppAssets.delivery,
      'subcategory': [
        {
          'subname': 'Sub1',
          "suburl": AppAssets.sub1,
        },
        {
          'subname': 'Sub2',
          "suburl": AppAssets.sub2,
        },
        {
          'subname': 'Sub3',
          "suburl": AppAssets.sub3,
        },
        {
          'subname': 'Sub4',
          "suburl": AppAssets.sub4,
        },
        {
          'subname': 'Sub5',
          "suburl": AppAssets.sub5,
        },
        {
          'subname': 'Sub6',
          "suburl": AppAssets.sub6,
        },
        {
          'subname': 'Sub7',
          "suburl": AppAssets.sub7,
        }
      ]
    },

    // ------------------- 3 main -------------------
    {
      'name': 'Hair & Beauty',
      'url': AppAssets.hair,
      'subcategory': [
        {
          'subname': 'Sub1',
          "suburl": AppAssets.sub1,
        },
        {
          'subname': 'Sub2',
          "suburl": AppAssets.sub2,
        },
        {
          'subname': 'Sub3',
          "suburl": AppAssets.sub3,
        },
        {
          'subname': 'Sub4',
          "suburl": AppAssets.sub4,
        },
        {
          'subname': 'Sub5',
          "suburl": AppAssets.sub5,
        },
        {
          'subname': 'Sub6',
          "suburl": AppAssets.sub6,
        },
        {
          'subname': 'Sub7',
          "suburl": AppAssets.sub7,
        }
      ]
    },

    // ------------------ 4 main ------------------------
    {
      'name': 'Food & Beverage',
      'url': AppAssets.food,
      'subcategory': [
        {
          'subname': 'Sub1',
          "suburl": AppAssets.sub1,
        },
        {
          'subname': 'Sub2',
          "suburl": AppAssets.sub2,
        },
        {
          'subname': 'Sub3',
          "suburl": AppAssets.sub3,
        },
        {
          'subname': 'Sub4',
          "suburl": AppAssets.sub4,
        },
        {
          'subname': 'Sub5',
          "suburl": AppAssets.sub5,
        },
        {
          'subname': 'Sub6',
          "suburl": AppAssets.sub6,
        },
        {
          'subname': 'Sub7',
          "suburl": AppAssets.sub7,
        }
      ]
    },

    // --------------------- 5 main ----------------------
    {
      'name': 'Home & Care',
      'url': AppAssets.home,
      'subcategory': [
        {
          'subname': 'Sub1',
          "suburl": AppAssets.sub1,
        },
        {
          'subname': 'Sub2',
          "suburl": AppAssets.sub2,
        },
        {
          'subname': 'Sub3',
          "suburl": AppAssets.sub3,
        },
        {
          'subname': 'Sub4',
          "suburl": AppAssets.sub4,
        },
        {
          'subname': 'Sub5',
          "suburl": AppAssets.sub5,
        },
        {
          'subname': 'Sub6',
          "suburl": AppAssets.sub6,
        },
        {
          'subname': 'Sub7',
          "suburl": AppAssets.sub7,
        }
      ]
    },

    // -------------------- 6 main -------------------
    {
      'name': 'Sports & Leisure',
      'url': AppAssets.sports,
      'subcategory': [
        {
          'subname': 'Sub1',
          "suburl": AppAssets.sub1,
        },
        {
          'subname': 'Sub2',
          "suburl": AppAssets.sub2,
        },
        {
          'subname': 'Sub3',
          "suburl": AppAssets.sub3,
        },
        {
          'subname': 'Sub4',
          "suburl": AppAssets.sub4,
        },
        {
          'subname': 'Sub5',
          "suburl": AppAssets.sub5,
        },
        {
          'subname': 'Sub6',
          "suburl": AppAssets.sub6,
        },
        {
          'subname': 'Sub7',
          "suburl": AppAssets.sub7,
        }
      ]
    },

    // ------------------ 7 main -------------------

    {
      'name': 'Events & Hospitality',
      'url': AppAssets.events,
      'subcategory': [
        {
          'subname': 'Sub1',
          "suburl": AppAssets.sub1,
        },
        {
          'subname': 'Sub2',
          "suburl": AppAssets.sub2,
        },
        {
          'subname': 'Sub3',
          "suburl": AppAssets.sub3,
        },
        {
          'subname': 'Sub4',
          "suburl": AppAssets.sub4,
        },
        {
          'subname': 'Sub5',
          "suburl": AppAssets.sub5,
        },
        {
          'subname': 'Sub6',
          "suburl": AppAssets.sub6,
        },
        {
          'subname': 'Sub7',
          "suburl": AppAssets.sub7,
        }
      ]
    },

    // ---------------------- 8 main -----------------------
    {
      'name': 'Cleaning',
      'url': AppAssets.cleaning,
      'subcategory': [
        {
          'subname': 'Sub1',
          "suburl": AppAssets.sub1,
        },
        {
          'subname': 'Sub2',
          "suburl": AppAssets.sub2,
        },
        {
          'subname': 'Sub3',
          "suburl": AppAssets.sub3,
        },
        {
          'subname': 'Sub4',
          "suburl": AppAssets.sub4,
        },
        {
          'subname': 'Sub5',
          "suburl": AppAssets.sub5,
        },
        {
          'subname': 'Sub6',
          "suburl": AppAssets.sub6,
        },
        {
          'subname': 'Sub7',
          "suburl": AppAssets.sub7,
        }
      ]
    },

    // ------------------------- 9 main -------------------
    {
      'name': 'Tuition & Lessons',
      'url': AppAssets.tutions,
      'subcategory': [
        {
          'subname': 'Sub1',
          "suburl": AppAssets.sub1,
        },
        {
          'subname': 'Sub2',
          "suburl": AppAssets.sub2,
        },
        {
          'subname': 'Sub3',
          "suburl": AppAssets.sub3,
        },
        {
          'subname': 'Sub4',
          "suburl": AppAssets.sub4,
        },
        {
          'subname': 'Sub5',
          "suburl": AppAssets.sub5,
        },
        {
          'subname': 'Sub6',
          "suburl": AppAssets.sub6,
        },
        {
          'subname': 'Sub7',
          "suburl": AppAssets.sub7,
        }
      ]
    },

    // ------------------------- 10 main ----------------------
    {
      'name': 'Pet Care',
      'url': AppAssets.pets,
      'subcategory': [
        {
          'subname': 'Sub1',
          "suburl": AppAssets.sub1,
        },
        {
          'subname': 'Sub2',
          "suburl": AppAssets.sub2,
        },
        {
          'subname': 'Sub3',
          "suburl": AppAssets.sub3,
        },
        {
          'subname': 'Sub4',
          "suburl": AppAssets.sub4,
        },
        {
          'subname': 'Sub5',
          "suburl": AppAssets.sub5,
        },
        {
          'subname': 'Sub6',
          "suburl": AppAssets.sub6,
        },
        {
          'subname': 'Sub7',
          "suburl": AppAssets.sub7,
        }
      ]
    },
    // ---------------------- 11 main ----------------
    {
      'name': 'Event Stalls & Spaces',
      'url': AppAssets.stalls,
      'subcategory': [
        {
          'subname': 'Sub1',
          "suburl": AppAssets.sub1,
        },
        {
          'subname': 'Sub2',
          "suburl": AppAssets.sub2,
        },
        {
          'subname': 'Sub3',
          "suburl": AppAssets.sub3,
        },
        {
          'subname': 'Sub4',
          "suburl": AppAssets.sub4,
        },
        {
          'subname': 'Sub5',
          "suburl": AppAssets.sub5,
        },
        {
          'subname': 'Sub6',
          "suburl": AppAssets.sub6,
        },
        {
          'subname': 'Sub7',
          "suburl": AppAssets.sub7,
        }
      ]
    },
    // -------------------------- 12 main ---------------------
    {
      'name': 'Community & Partnerships',
      'url': AppAssets.community,
      'subcategory': [
        {
          'subname': 'Sub1',
          "suburl": AppAssets.sub1,
        },
        {
          'subname': 'Sub2',
          "suburl": AppAssets.sub2,
        },
        {
          'subname': 'Sub3',
          "suburl": AppAssets.sub3,
        },
        {
          'subname': 'Sub4',
          "suburl": AppAssets.sub4,
        },
        {
          'subname': 'Sub5',
          "suburl": AppAssets.sub5,
        },
        {
          'subname': 'Sub6',
          "suburl": AppAssets.sub6,
        },
        {
          'subname': 'Sub7',
          "suburl": AppAssets.sub7,
        }
      ]
    },

    // -------------------------13 main ------------------------
    {
      'name': 'Health & Well-Being',
      'url': AppAssets.health,
      'subcategory': [
        {
          'subname': 'Sub1',
          "suburl": AppAssets.sub1,
        },
        {
          'subname': 'Sub2',
          "suburl": AppAssets.sub2,
        },
        {
          'subname': 'Sub3',
          "suburl": AppAssets.sub3,
        },
        {
          'subname': 'Sub4',
          "suburl": AppAssets.sub4,
        },
        {
          'subname': 'Sub5',
          "suburl": AppAssets.sub5,
        },
        {
          'subname': 'Sub6',
          "suburl": AppAssets.sub6,
        },
        {
          'subname': 'Sub7',
          "suburl": AppAssets.sub7,
        }
      ]
    },

    // ----------------- 14 main ---------------------
    {
      'name': 'Parenting & 0-5 Years',
      'url': AppAssets.parent,
      'subcategory': [
        {
          'subname': 'Sub1',
          "suburl": AppAssets.sub1,
        },
        {
          'subname': 'Sub2',
          "suburl": AppAssets.sub2,
        },
        {
          'subname': 'Sub3',
          "suburl": AppAssets.sub3,
        },
        {
          'subname': 'Sub4',
          "suburl": AppAssets.sub4,
        },
        {
          'subname': 'Sub5',
          "suburl": AppAssets.sub5,
        },
        {
          'subname': 'Sub6',
          "suburl": AppAssets.sub6,
        },
        {
          'subname': 'Sub7',
          "suburl": AppAssets.sub7,
        }
      ]
    },

    // ---------------------------- 15 main --------------------
    {
      'name': 'Artisan & Homeware',
      'url': AppAssets.homeware,
      'subcategory': [
        {
          'subname': 'Sub1',
          "suburl": AppAssets.sub1,
        },
        {
          'subname': 'Sub2',
          "suburl": AppAssets.sub2,
        },
        {
          'subname': 'Sub3',
          "suburl": AppAssets.sub3,
        },
        {
          'subname': 'Sub4',
          "suburl": AppAssets.sub4,
        },
        {
          'subname': 'Sub5',
          "suburl": AppAssets.sub5,
        },
        {
          'subname': 'Sub6',
          "suburl": AppAssets.sub6,
        },
        {
          'subname': 'Sub7',
          "suburl": AppAssets.sub7,
        }
      ]
    },

    //------------------------ 16 main ------------------------
    {
      'name': 'Local Events',
      'url': AppAssets.localevents,
      'subcategory': [
        {
          'subname': 'Sub1',
          "suburl": AppAssets.sub1,
        },
        {
          'subname': 'Sub2',
          "suburl": AppAssets.sub2,
        },
        {
          'subname': 'Sub3',
          "suburl": AppAssets.sub3,
        },
        {
          'subname': 'Sub4',
          "suburl": AppAssets.sub4,
        },
        {
          'subname': 'Sub5',
          "suburl": AppAssets.sub5,
        },
        {
          'subname': 'Sub6',
          "suburl": AppAssets.sub6,
        },
        {
          'subname': 'Sub7',
          "suburl": AppAssets.sub7,
        }
      ]
    },

    // ------------------ 17 main -------------------
    {
      'name': 'IT & Digital Design',
      'url': AppAssets.it,
      'subcategory': [
        {
          'subname': 'Sub1',
          "suburl": AppAssets.sub1,
        },
        {
          'subname': 'Sub2',
          "suburl": AppAssets.sub2,
        },
        {
          'subname': 'Sub3',
          "suburl": AppAssets.sub3,
        },
        {
          'subname': 'Sub4',
          "suburl": AppAssets.sub4,
        },
        {
          'subname': 'Sub5',
          "suburl": AppAssets.sub5,
        },
        {
          'subname': 'Sub6',
          "suburl": AppAssets.sub6,
        },
        {
          'subname': 'Sub7',
          "suburl": AppAssets.sub7,
        }
      ]
    },
    // --------------------- 18 main ---------------------
    {
      'name': 'Packaging & Printing',
      'url': AppAssets.packaging,
      'subcategory': [
        {
          'subname': 'Sub1',
          "suburl": AppAssets.sub1,
        },
        {
          'subname': 'Sub2',
          "suburl": AppAssets.sub2,
        },
        {
          'subname': 'Sub3',
          "suburl": AppAssets.sub3,
        },
        {
          'subname': 'Sub4',
          "suburl": AppAssets.sub4,
        },
        {
          'subname': 'Sub5',
          "suburl": AppAssets.sub5,
        },
        {
          'subname': 'Sub6',
          "suburl": AppAssets.sub6,
        },
        {
          'subname': 'Sub7',
          "suburl": AppAssets.sub7,
        }
      ]
    },

    // ----------------------- 19 main --------------------------
    {
      'name': 'Repair & Service',
      'url': AppAssets.repair,
      'subcategory': [
        {
          'subname': 'hello',
          "suburl": AppAssets.sub1,
        },
        {
          'subname': '123456',
          "suburl": AppAssets.sub2,
        },
        {
          'subname': 'Sub3',
          "suburl": AppAssets.sub3,
        },
        {
          'subname': 'Sub4',
          "suburl": AppAssets.sub4,
        },
        {
          'subname': 'Sub5',
          "suburl": AppAssets.sub5,
        },
        {
          'subname': 'Sub6',
          "suburl": AppAssets.sub6,
        },
        {
          'subname': 'Sub7',
          "suburl": AppAssets.sub7,
        }
      ]
    },
  ];
}
