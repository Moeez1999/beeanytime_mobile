import 'package:beeanytime/constants/app_libraries.dart';
import 'package:beeanytime/controllers/seeker/seeker_profile_controller.dart';
import 'package:beeanytime/widgets/commmon_scaffold.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class SeekerProfileScreen extends StatelessWidget {
  const SeekerProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SeekerProfileControler>(
        init: SeekerProfileControler(),
        builder: (_) {
          return CommonScaffold(
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
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff1d1d1b)),
                              ),
                              const Spacer(),
                              InkWell(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return StatefulBuilder(
                                            builder: ((context, setState) =>
                                                Dialog(
                                                  elevation: 10,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.0)), //this right here
                                                  child: SizedBox(
                                                    height: 450,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              20.0),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              const Text(
                                                                  "Filters",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700)),
                                                              Spacer(),
                                                              Image.asset(
                                                                  AppAssets
                                                                      .filter)
                                                            ],
                                                          ).marginOnly(
                                                              top: 20,
                                                              bottom: 19),
                                                          const Divider(
                                                            height: 1,
                                                            thickness: 1,
                                                            color: Color(
                                                                0xffEBEBEB),
                                                          ),
                                                          const SizedBox(
                                                            height: 14,
                                                          ),
                                                          Row(
                                                            children: const [
                                                              Text(
                                                                "Distance",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                              Spacer(),
                                                              Text(
                                                                "1.0 miles",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ],
                                                          ).marginOnly(top: 12),
                                                          SfSlider(
                                                            activeColor:
                                                                const Color(
                                                                    0xffF8AA16),
                                                            inactiveColor:
                                                                Colors.black,
                                                            showTicks: true,
                                                            enableTooltip: true,
                                                            min: 0.0,
                                                            max: 1000.0,
                                                            value: _.value,
                                                            onChanged: (dynamic
                                                                newValue) {
                                                              setState(() {
                                                                _.value =
                                                                    newValue;
                                                              });
                                                            },
                                                          ).marginOnly(
                                                              bottom: 15),
                                                          const Divider(
                                                            height: 1,
                                                            thickness: 1,
                                                            color: Color(
                                                                0xffEBEBEB),
                                                          ),
                                                          const SizedBox(
                                                            height: 14,
                                                          ),
                                                          const Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Text(
                                                              "Sort by rating",
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Column(
                                                                children: [
                                                                  const Text(
                                                                    "High to Low",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Colors
                                                                            .black),
                                                                  ),
                                                                  Radio<String>(
                                                                    activeColor:
                                                                        const Color(
                                                                            0xffF8AA16),
                                                                    value:
                                                                        'High to Low',
                                                                    groupValue:
                                                                        _.selectedrating,
                                                                    onChanged:
                                                                        (value) {
                                                                      setState(
                                                                          () {
                                                                        _.selectedrating =
                                                                            value!;
                                                                      });
                                                                    },
                                                                  ),
                                                                ],
                                                              ),
                                                              const SizedBox(
                                                                width: 40,
                                                              ),
                                                              Column(
                                                                children: [
                                                                  const Text(
                                                                    "High to Low",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Colors
                                                                            .black),
                                                                  ),
                                                                  Radio<String>(
                                                                    activeColor:
                                                                        const Color(
                                                                            0xffF8AA16),
                                                                    value:
                                                                        'Low to High',
                                                                    groupValue:
                                                                        _.selectedrating,
                                                                    onChanged:
                                                                        (value) {
                                                                      setState(
                                                                          () {
                                                                        _.selectedrating =
                                                                            value!;
                                                                      });
                                                                    },
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ).marginSymmetric(
                                                              vertical: 20),
                                                          const Divider(
                                                            height: 1,
                                                            thickness: 1,
                                                            color: Color(
                                                                0xffEBEBEB),
                                                          ),
                                                          const SizedBox(
                                                            height: 14,
                                                          ),
                                                          const Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Text(
                                                              "Sort by price",
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            height: 20,
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Column(
                                                                children: [
                                                                  const Text(
                                                                    "High to Low",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Colors
                                                                            .black),
                                                                  ),
                                                                  Radio<String>(
                                                                    activeColor:
                                                                        const Color(
                                                                            0xffF8AA16),
                                                                    value:
                                                                        'Low to high',
                                                                    groupValue:
                                                                        _.selectedprice,
                                                                    onChanged:
                                                                        (value) {
                                                                      setState(
                                                                          () {
                                                                        _.selectedprice =
                                                                            value!;
                                                                      });
                                                                    },
                                                                  ),
                                                                ],
                                                              ),
                                                              const SizedBox(
                                                                width: 40,
                                                              ),
                                                              Column(
                                                                children: [
                                                                  const Text(
                                                                    "Low to High",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Colors
                                                                            .black),
                                                                  ),
                                                                  Radio<String>(
                                                                    activeColor:
                                                                        const Color(
                                                                            0xffF8AA16),
                                                                    value:
                                                                        'High to Low',
                                                                    groupValue:
                                                                        _.selectedprice,
                                                                    onChanged:
                                                                        (value) {
                                                                      setState(
                                                                          () {
                                                                        _.selectedprice =
                                                                            value!;
                                                                      });
                                                                    },
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                )));
                                      });
                                },
                                child: const Text(
                                  AppStrings.filter,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff1d1d1b)),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Image.asset(AppAssets.filter)
                            ],
                          ).marginOnly(
                              top: 35, left: 15, bottom: 30, right: 15),
                          _.data.isNotEmpty
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
                                                        width: 25,
                                                      ),
                                                      RatingBar.builder(
                                                        itemSize: 15,
                                                        initialRating: 3,
                                                        minRating: 1,
                                                        direction:
                                                            Axis.horizontal,
                                                        allowHalfRating: true,
                                                        itemCount: 5,
                                                        itemBuilder:
                                                            (context, _) =>
                                                                const Icon(
                                                          Icons.star,
                                                          color: Colors.amber,
                                                        ),
                                                        onRatingUpdate:
                                                            (rating) {
                                                          rating = _.rating;
                                                          _.update();
                                                        },
                                                      ),
                                                      const SizedBox(
                                                        width: 3,
                                                      ),
                                                      Text(
                                                        "${_.rating}",
                                                        style: const TextStyle(
                                                            fontSize: 11,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                      const SizedBox(
                                                        width: 3,
                                                      ),
                                                      const Text(
                                                        "(10)",
                                                        style: TextStyle(
                                                            fontSize: 11,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: Colors.grey),
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
                                                  fontSize: 12,
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
                            height: 50,
                            width: 190,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Color(0xffF8AA16)),
                            child: const Center(
                              child: Text(
                                "Post an Open Request",
                                style: TextStyle(
                                    fontSize: 14,
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
