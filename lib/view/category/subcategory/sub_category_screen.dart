import 'package:beeanytime/constants/app_colors.dart';
import 'package:beeanytime/constants/app_libraries.dart';
import 'package:beeanytime/controllers/category/main_category_controller.dart';
import 'package:beeanytime/controllers/home/sub_category_controller/sub_category_controller.dart';
import 'package:beeanytime/widgets/commmon_scaffold.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      appbarelevation: 2,
      centerDocked: true,
      backarrow: Colors.black,
      appbarcolor: Colors.white,
      showAppBar: true,
      bodyData: bodyData(context),
    );
  }

  Widget bodyData(BuildContext context) {
    return GetBuilder<SubCategoryController>(
        init: SubCategoryController(),
        builder: (_) {
          return _.isLoading
              ? const Center(
                  child: AppLoaders.rotatingCircleSpinkit,
                )
              : SingleChildScrollView(
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // ------------ SLider -------------
                    SizedBox(
                      height: 200,
                      width: Get.width,
                      child: CarouselSlider.builder(
                        unlimitedMode: true,
                        //controller: _sliderController,
                        slideBuilder: (index) {
                          return Container(
                            width: Get.width,
                            height: 200,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(_.banners[index]['url'],
                                  fit: BoxFit.cover),
                            ),
                          );
                        },
                        slideTransform: const CubeTransform(),
                        slideIndicator: CircularSlideIndicator(
                            padding: const EdgeInsets.only(bottom: 32),
                            indicatorBorderColor: Colors.transparent,
                            currentIndicatorColor: AppColors.primaryColor,
                            indicatorBackgroundColor: const Color(0xffc4c4c4)),
                        itemCount: _.banners.length,
                        initialPage: 0,
                        enableAutoSlider: true,
                      ),
                    ).marginOnly(top: 110, bottom: 23),
                    Text(
                      'Providers available as ${_.name}',
                      style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 22,
                    ),

                    Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                          color: Color(0xffF8AA16), shape: BoxShape.circle),
                      child: Image.asset(_.imageurl!, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      _.name,
                      style: const TextStyle(
                          fontSize: 12,
                          fontFamily: 'Roboto',
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 23,
                    ),
                    GridView.builder(
                      padding: const EdgeInsets.all(0),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: MediaQuery.of(context).size.width /
                            (MediaQuery.of(context).size.height / 1.5),
                      ),
                      itemCount: _.sub.length,
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 102,
                              width: 102,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.textfieldColor,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 10,
                                      offset: const Offset(
                                        0.0, // Move to right 10  horizontally
                                        10.0,
                                      )
                                      // changes position of shadow
                                      ),
                                ],
                              ),
                              child: Center(
                                  child: Image.asset(_.sub[index]["suburl"])),
                            ),
                            Text(
                              "${_.sub[index]['subname']}",
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ).marginOnly(top: 25),
                          ],
                        );
                      },
                    )
                  ],
                ).marginOnly(
                  left: 20,
                  right: 20,
                ));
        });
  }
}
