import 'package:beeanytime/constants/app_colors.dart';
import 'package:beeanytime/constants/app_libraries.dart';
import 'package:beeanytime/controllers/home/home_screen_controller.dart';
import 'package:beeanytime/widgets/app_loaders.dart';
import 'package:beeanytime/widgets/commmon_scaffold.dart';
import 'package:beeanytime/widgets/commn_textfield.dart';

class HommeScreen extends StatelessWidget {
  const HommeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (_) {
          return CommonScaffold(
            // centerDocked: true,
            // actions: [
            //   Row(
            //     children: [
            //       appBarContainer(
            //           AppColors.primaryColor, Icons.refresh, Colors.white),
            //       appBarContainer(AppColors.lightgreyColor,
            //               Icons.favorite_border, Colors.red)
            //           .marginSymmetric(horizontal: 5),
            //       appBarContainer(
            //           Colors.black, Icons.sms_outlined, Colors.white),
            //     ],
            //   ).marginOnly(left: 30)
            // ],
            // backarrow: Colors.black,
            // appbarcolor: Colors.white,
            // showAppBar: true,
            // appbarTitle: CommonTextField(controller: _.search),
            bodyData: bodyData(context, HomeController()),
          );
        });
  }

  Widget bodyData(BuildContext context, HomeController homeController) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (_) {
          return _.isLoading
              ? const Center(
                  child: AppLoaders.rotatingCircleSpinkit,
                )
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        width: Get.width,
                        child: Row(children: [
                          appBarContainer(AppColors.primaryColor, Icons.refresh,
                              Colors.white),
                          const Spacer(),
                          Image.asset(AppAssets.mainLogo),
                          const Spacer(),
                          appBarContainer(AppColors.lightgreyColor,
                              Icons.favorite_border, Colors.red),
                          const SizedBox(
                            width: 10,
                          ),
                          appBarContainer(
                              Colors.black, Icons.sms_outlined, Colors.white),
                        ]),
                      ).marginOnly(left: 18, right: 18, top: 52, bottom: 20),
                      Container(
                        color: Colors.transparent,
                        height: 210,
                        width: Get.width,
                        child: BetterPlayer(
                          controller: _.betterPlayerController,
                        ),
                      ).marginOnly(bottom: 27),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              color: Colors.transparent,
                              child: Column(children: [
                                const Text(
                                  AppStrings.find,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700),
                                ),
                                Container(
                                  height: 137,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(AppAssets.find))),
                                ).marginOnly(top: 13, bottom: 17),
                                const Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff1d1d1b)),
                                ),
                                const SizedBox(
                                  height: 13,
                                ),
                                Container(
                                  width: 120,
                                  height: 37,
                                  decoration: const BoxDecoration(
                                      color: AppColors.primaryColor,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: const Center(
                                    child: Text(
                                      AppStrings.find,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                )
                              ]),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              color: Colors.transparent,
                              child: Column(children: [
                                const Text(
                                  AppStrings.provide,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700),
                                ),
                                Container(
                                  height: 137,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage(AppAssets.provide))),
                                ).marginOnly(top: 13, bottom: 17),
                                const Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff1d1d1b)),
                                ),
                                const SizedBox(
                                  height: 13,
                                ),
                                Container(
                                  width: 120,
                                  height: 37,
                                  decoration: const BoxDecoration(
                                      color: AppColors.primaryColor,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: const Center(
                                    child: Text(
                                      AppStrings.provide,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                )
                              ]),
                            ),
                          ),
                        ],
                      ).marginSymmetric(horizontal: 20),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 300,
                        width: Get.width,
                        child: CarouselSlider.builder(
                          unlimitedMode: true,
                          //controller: _sliderController,
                          slideBuilder: (index) {
                            return SizedBox(
                              width: Get.width,
                              height: 300,
                              child: Image.asset(_.data[index]['url'],
                                  fit: BoxFit.cover),
                            );
                          },
                          slideTransform: const CubeTransform(),
                          slideIndicator: CircularSlideIndicator(
                              padding: const EdgeInsets.only(bottom: 32),
                              indicatorBorderColor: Colors.transparent,
                              currentIndicatorColor: AppColors.primaryColor,
                              indicatorBackgroundColor:
                                  const Color(0xffc4c4c4)),
                          itemCount: _.data.length,
                          initialPage: 0,
                          enableAutoSlider: true,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      socialMedia(
                          AppStrings.facebookmsg, FontAwesomeIcons.facebook),
                      socialMedia(
                              AppStrings.googlemsg, FontAwesomeIcons.youtube)
                          .marginSymmetric(vertical: 20)
                    ],
                  ),
                );
        });
  }

  Widget appBarContainer(Color color, IconData icon, Color iconColor) {
    return Container(
      height: 35,
      width: 35,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      child: Center(
          child: Icon(
        icon,
        color: iconColor,
        size: 22,
      )),
    );
  }

  Widget socialMedia(String desc, IconData iconData) {
    return Column(
      children: [
        Container(
          width: 31,
          height: 31,
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: Colors.yellow),
          child: Icon(
            iconData,
            color: Colors.white,
            size: 20,
          ),
        ).marginOnly(bottom: 17),
        Text(desc,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: Color(0xff1d1d1b)))
      ],
    );
  }
}
