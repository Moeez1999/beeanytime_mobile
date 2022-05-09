import 'package:beeanytime/constants/app_colors.dart';
import 'package:beeanytime/constants/app_libraries.dart';
import 'package:beeanytime/controllers/seeker/seeker_profile_detail_controllers.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class SeekerProfileDetailsScreen extends StatelessWidget {
  const SeekerProfileDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leadingWidth: 20,
        centerTitle: true,
        title: const Text(
          "Lyn Teg",
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w700, color: Colors.black),
        ),

        backgroundColor: Colors.white,
        elevation: 1.0,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left, color: Colors.black),
          onPressed: () {},
        ), //IconButton
      ),
      body: bodyData(context),
    );
  }

  Widget bodyData(BuildContext context) {
    return GetBuilder(
        init: SeekerProfileDetailController(),
        builder: (_) {
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      maxRadius: 30,
                    ),
                    const SizedBox(
                      width: 13,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "Moeez Suleman",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Image.asset(AppAssets.comment),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "0 Reviews",
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff1d1d1b)),
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            RatingBar.builder(
                              itemSize: 15,
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                // rating = _.rating;
                                // _.update();
                              },
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            const Text(
                              "${6}",
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            const Text(
                              "(10)",
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: 37,
                      width: 37,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffF8AA16)),
                      child:
                          const Icon(Icons.share_outlined, color: Colors.white),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 37,
                      width: 37,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffF8AA16)),
                      child: const Icon(Icons.favorite_outline,
                          color: Colors.white),
                    ),
                  ],
                ).marginOnly(top: 5, left: 15, right: 15, bottom: 20),
                // ---------------------- Profile container ---------------------------
                Container(
                  height: 150,
                  width: Get.width,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff000000).withOpacity(0.2),
                        spreadRadius: 3,
                        blurRadius: 20,
                        offset:
                            const Offset(0, 4), // changes position of shadow
                      ),
                    ],
                    color: const Color(0xfff0f0f0),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          AppStrings.serviceaddress,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: AppColors.textColor),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            alignment: Alignment.center,
                            height: 18,
                            width: 18,
                            decoration: const BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                            ),
                            child: const Icon(
                              Icons.chevron_right,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        serviceTile(AppStrings.location,
                            "The Poweder Room, 1 Red Bank Road"),
                        const SizedBox(
                          height: 7,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            serviceTile(AppStrings.area, "Bispham"),
                            serviceTile(AppStrings.city, "Bispham"),
                          ],
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            serviceTile(AppStrings.country, "Bispham"),
                            serviceTile(AppStrings.postcode, "Bispham"),
                          ],
                        ),
                      ]).marginSymmetric(horizontal: 16, vertical: 14),
                ).marginSymmetric(horizontal: 18),
                // --------------------- seeker previous stats details -------------------
                Column(
                  children: [
                    serviceTile(AppStrings.category, "Hair & Beauty"),
                    const SizedBox(
                      height: 7,
                    ),
                    serviceTile(AppStrings.subcategory, "Nail"),
                    const SizedBox(
                      height: 7,
                    ),
                    serviceTile("Service Provided", "Nail"),
                    const SizedBox(
                      height: 7,
                    ),
                    serviceTile(AppStrings.memberSince, "29.10.2021"),
                    const SizedBox(
                      height: 7,
                    ),
                    serviceTile(AppStrings.completedJobs, "2"),
                    const SizedBox(
                      height: 7,
                    ),
                    serviceTile(AppStrings.totalViews, "2"),
                  ],
                ).marginOnly(left: 38, top: 16),

                // ------------------------ Service description --------------------
                Container(
                  height: 110,
                  width: Get.width,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff000000).withOpacity(0.2),
                        spreadRadius: 3,
                        blurRadius: 20,
                        offset:
                            const Offset(0, 4), // changes position of shadow
                      ),
                    ],
                    color: const Color(0xfff0f0f0),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          AppStrings.servicedescription,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: AppColors.textColor),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing industry. ")
                      ]).marginSymmetric(horizontal: 16, vertical: 14),
                ).marginSymmetric(horizontal: 20, vertical: 27),

                // --------------- badges -----------------
                Row(
                  children: [
                    const Text(
                      AppStrings.badges,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: AppColors.textColor),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      decoration: const BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Row(children: [
                        Image.asset(AppAssets.certified),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          "Public",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 13),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        )
                      ]).marginSymmetric(horizontal: 5),
                    )
                  ],
                ).marginOnly(left: 38, bottom: 20),
                // -------------------- Portfolio ----------------------
                Container(
                  height: 200,
                  width: Get.width,
                  color: Colors.black,
                ).marginOnly(left: 19, right: 19),
                // --------------- Social Links ------------
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      AppStrings.socialprofile,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        socialLink(FontAwesomeIcons.facebook, () {}),
                        const SizedBox(
                          width: 5,
                        ),
                        socialLink(FontAwesomeIcons.google, () {}),
                        const SizedBox(
                          width: 5,
                        ),
                        socialLink(FontAwesomeIcons.instagram, () {})
                      ],
                    )
                  ],
                ).marginOnly(left: 38, top: 20, bottom: 17, right: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      AppStrings.description,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: AppColors.textColor),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Container(
                        child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s"))
                  ],
                ).marginOnly(left: 38, right: 20, bottom: 20)
              ],
            ),
          );
        });
  }

  Widget serviceTile(String title, String description) {
    return GetBuilder<SeekerProfileDetailController>(
        init: SeekerProfileDetailController(),
        builder: (_) {
          return Row(
            children: [
              Text(
                title + ": ",
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textColor),
              ),
              Text(
                description,
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: title == "Service Provided"
                        ? AppColors.primaryColor
                        : AppColors.textColor),
              )
            ],
          );
        });
  }

  Widget socialLink(IconData icon, VoidCallback onPressed) {
    return GetBuilder<SeekerProfileDetailController>(
        init: SeekerProfileDetailController(),
        builder: (_) {
          return GestureDetector(
            onTap: onPressed,
            child: Container(
              height: 25,
              width: 25,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.primaryColor),
              child: Icon(
                icon,
                size: 20,
                color: Colors.white,
              ),
            ),
          );
        });
  }
}
