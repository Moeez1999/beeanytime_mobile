import 'package:beeanytime/constants/app_libraries.dart';
import 'package:beeanytime/controllers/seeker/seeker_profile_controller.dart';
import 'package:beeanytime/widgets/commmon_scaffold.dart';

class SeekerProfileScreen extends StatelessWidget {
  const SeekerProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SeekerProfileControler>(
        init: SeekerProfileControler(),
        builder: (_) {
          return CommonScaffold(
            twofields: true,
            appbarelevation: 2,
            centerDocked: true,
            backarrow: Colors.black,
            appbarcolor: Colors.white,
            showAppBar: true,
            bodyData: bodyData(context),
          );
        });
  }

  Widget bodyData(BuildContext context) {
    return GetBuilder<SeekerProfileControler>(
        init: SeekerProfileControler(),
        builder: (_) {
          return _.isLoading
              ? const Center(
                  child: AppLoaders.rotatingCircleSpinkit,
                )
              : SafeArea(
                  child: SingleChildScrollView(
                    child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                AppStrings.message,
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff1d1d1b)),
                              ),
                              const Spacer(),
                              const Text(
                                AppStrings.filter,
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff1d1d1b)),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Image.asset(AppAssets.filter)
                            ],
                          ).marginOnly(
                              top: 15, left: 15, bottom: 30, right: 15),
                          _.data.length == 0
                              ? ListView.separated(
                                  physics: const BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) =>
                                      Container(
                                        height: 28,
                                      ),
                                  itemCount: _.data.length,
                                  itemBuilder: (context, index) => Container(
                                      height: 270,
                                      decoration: const BoxDecoration(
                                          color: Color(0xfff6f6f6),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    _.data[index]["nanem"],
                                                    style: const TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.black),
                                                  ),
                                                  const SizedBox(
                                                    height: 3,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Image.asset(
                                                          AppAssets.comment),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      const Text(
                                                        "0 Reviews",
                                                        style: TextStyle(
                                                            fontSize: 11,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: Color(
                                                                0xff1d1d1b)),
                                                      ),
                                                      const SizedBox(
                                                        width: 19,
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Container(
                                                    height: 25,
                                                    width: 85,
                                                    decoration:
                                                        const BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius.all(
                                                                    Radius
                                                                        .circular(
                                                                            3)),
                                                            color: Color(
                                                                0xffF8AA16)),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Image.asset(AppAssets
                                                              .certified),
                                                          const SizedBox(
                                                            width: 3,
                                                          ),
                                                          const Text(
                                                            "Certified",
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                        ]),
                                                  )
                                                ],
                                              ),
                                              const Spacer(),
                                              Container(
                                                height: 37,
                                                width: 37,
                                                decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Color(0xffF8AA16)),
                                                child: const Icon(
                                                    Icons.favorite_outline,
                                                    color: Colors.white),
                                              )
                                            ],
                                          ).marginOnly(
                                              top: 5,
                                              left: 15,
                                              right: 15,
                                              bottom: 20),
                                          Container(
                                            height: 70,
                                            decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                color: Colors.white),
                                            child: const Text(
                                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black),
                                            ).marginSymmetric(
                                                horizontal: 13, vertical: 12),
                                          ).marginSymmetric(horizontal: 16),
                                          const SizedBox(
                                            height: 13,
                                          ),
                                          Row(
                                            children: [
                                              Row(
                                                children: [
                                                  const Text(
                                                    "Location :",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.black),
                                                  ),
                                                  const SizedBox(
                                                    width: 3,
                                                  ),
                                                  Text(
                                                    _.data[index]['location'],
                                                    style: const TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                              const Spacer(),
                                              Row(
                                                children: [
                                                  const Text(
                                                    "Response Time :",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.black),
                                                  ),
                                                  const SizedBox(
                                                    width: 3,
                                                  ),
                                                  Text(
                                                    " ${_.data[index]['Response']} hours",
                                                    style: const TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ).marginSymmetric(
                                              horizontal: 15, vertical: 10),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: const [
                                                  Text(
                                                    "Distance :",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.black),
                                                  ),
                                                  SizedBox(
                                                    width: 3,
                                                  ),
                                                  Text(
                                                    "8 miles",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                              const Spacer(),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  const Text(
                                                    "Price :",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.black),
                                                  ),
                                                  const SizedBox(
                                                    width: 3,
                                                  ),
                                                  Text(
                                                    " ${_.data[index]['Price']} hours",
                                                    style: const TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ).marginSymmetric(horizontal: 15)
                                        ],
                                      ))).marginSymmetric(horizontal: 18)
                              : Container(
                                  height: 350,
                                  width: Get.width,
                                  decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      color: Color(0xffF6F6F6)),
                                  child: Column(
                                    children: [
                                      const Text(
                                        " Sorry",
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black),
                                      ).marginOnly(top: 29, bottom: 10),
                                      const Text(
                                        " No Providers Available",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black),
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      Image.asset(AppAssets.notfound)
                                    ],
                                  ),
                                ).marginOnly(top: 100, left: 15, right: 15),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            height: 40,
                            width: 170,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Color(0xffF8AA16)),
                            child: const Center(
                              child: Text(
                                "Post an Open Request",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                            ),
                          )
                        ]),
                  ),
                );
        });
  }
}
