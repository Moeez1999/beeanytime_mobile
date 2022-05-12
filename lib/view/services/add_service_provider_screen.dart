import 'package:beeanytime/constants/app_libraries.dart';
import 'package:beeanytime/constants/app_textStyles.dart';
import 'package:beeanytime/controllers/services/add_service_provider_controller.dart';
import 'package:beeanytime/widgets/commn_textfield.dart';
import 'package:beeanytime/widgets/common_container.dart';
import 'package:beeanytime/widgets/common_dropdown.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class AddServiceProvider extends StatelessWidget {
  const AddServiceProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leadingWidth: 20,
        centerTitle: true,
        title: const Text(
          AppStrings.addMyservice,
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
    return GetBuilder<AddServiceProviderController>(
        init: AddServiceProviderController(),
        builder: (_) {
          return SingleChildScrollView(
            child: Column(
              children: [
                CommonContainer(
                    height: 130,
                    content: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              AppStrings.enableservice,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.textColor),
                            ),
                            Switch(
                                activeColor: Colors.white,
                                inactiveThumbColor: Colors.white,
                                inactiveTrackColor: Colors.black,
                                activeTrackColor: AppColors.primaryColor,
                                value: _.enableService,
                                onChanged: (value) {
                                  if (_.enableService == true) {
                                    _.enableService = false;
                                    _.update();
                                  } else {
                                    _.enableService = true;
                                    _.update();
                                  }
                                }),
                          ],
                        ),
                        const Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                            style: AppStyles.lightStyle)
                      ],
                    ).marginOnly(
                      left: 20,
                      right: 20,
                      top: 13,
                    )),
                const SizedBox(
                  height: 20,
                ),
                CommonContainer(
                    height: 130,
                    content: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(AppStrings.hideaddress,
                                style: AppStyles.boldStyle),
                            Switch(
                                activeColor: Colors.white,
                                inactiveThumbColor: Colors.white,
                                inactiveTrackColor: Colors.black,
                                activeTrackColor: AppColors.primaryColor,
                                value: _.hideAddress,
                                onChanged: (value) {
                                  if (_.hideAddress == true) {
                                    _.hideAddress = false;
                                    _.update();
                                  } else {
                                    _.hideAddress = true;
                                    _.update();
                                  }
                                }),
                          ],
                        ),
                        const Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                            style: AppStyles.lightStyle)
                      ],
                    ).marginOnly(left: 20, right: 20, top: 13, bottom: 24)),
                const SizedBox(
                  height: 20,
                ),
                // ----------------------- show address content -----------------------
                _.hideAddress == true
                    ? Column(
                        children: [
                          CommonContainer(
                              height: 150,
                              content: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    AppStrings.serviceaddress,
                                    style: AppStyles.boldStyle,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    width: Get.width,
                                    height: 40,
                                    child: CommonDropDownField(
                                      hinttext: 'Select Address',
                                      controller: _.address,
                                      placeholder: "Select Address",
                                      values: _.dropDownList,
                                      checkedvalue: _.address,
                                      screenController: _,
                                      fillcolor: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 40,
                                    width: Get.width,
                                    decoration: const BoxDecoration(
                                        color: AppColors.primaryColor,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6))),
                                    child: const Center(
                                      child: Text(AppStrings.createAddress,
                                          style: AppStyles.whiteLightStyle),
                                    ),
                                  )
                                ],
                              ).marginOnly(
                                  left: 20, right: 20, top: 16, bottom: 10)),
                          const SizedBox(
                            height: 20,
                          ),
                          CommonContainer(
                              height: 120,
                              content: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    AppStrings.serviceTitle,
                                    style: AppStyles.boldStyle,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  CommonTextField(
                                    controller: _.servicetitle,
                                    fillcolor: Colors.white,
                                    hintText: "Enter service Title",
                                    radius: 6,
                                    maxlines: 1,
                                  )
                                ],
                              ).marginOnly(
                                  left: 20, right: 20, top: 16, bottom: 10)),
                          const SizedBox(
                            height: 20,
                          ),
                          CommonContainer(
                              height: 170,
                              content: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    AppStrings.serviceTitle,
                                    style: AppStyles.boldStyle,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  CommonTextField(
                                    controller: _.servicedetail,
                                    fillcolor: Colors.white,
                                    hintText: "Enter Service Detail",
                                    radius: 6,
                                    maxlines: 3,
                                  )
                                ],
                              ).marginOnly(
                                  left: 20, right: 20, top: 16, bottom: 10)),
                          const SizedBox(
                            height: 20,
                          ),
                          CommonContainer(
                              height: 130,
                              content: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    AppStrings.serviceTitle,
                                    style: AppStyles.boldStyle,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  CommonTextField(
                                    controller: _.servicedetail,
                                    fillcolor: Colors.white,
                                    hintText: "Enter Response Time in Hour",
                                    radius: 6,
                                    maxlines: 1,
                                  )
                                ],
                              ).marginOnly(
                                  left: 20, right: 20, top: 16, bottom: 10))
                        ],
                      )
                    : const SizedBox(),
                const SizedBox(
                  height: 20,
                ),
                CommonContainer(
                    height: 300,
                    content: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(AppStrings.applyCancllationCharges,
                                style: AppStyles.boldStyle),
                            Switch(
                                activeColor: Colors.white,
                                inactiveThumbColor: Colors.white,
                                inactiveTrackColor: Colors.black,
                                activeTrackColor: AppColors.primaryColor,
                                value: _.applyCancellationCharges,
                                onChanged: (value) {
                                  if (_.applyCancellationCharges == true) {
                                    _.applyCancellationCharges = false;
                                    _.update();
                                  } else {
                                    _.applyCancellationCharges = true;
                                    _.update();
                                  }
                                }),
                          ],
                        ),
                        const Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                            style: AppStyles.lightStyle)
                      ],
                    ).marginOnly(left: 20, right: 20, top: 13, bottom: 24)),
                const SizedBox(
                  height: 20,
                ),
                // ------------- apply cancellation content ------------------
                _.applyCancellationCharges == true
                    ? Column(
                        children: [
                          CommonContainer(
                              height: 200,
                              content: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    AppStrings.serviceaddress,
                                    style: AppStyles.boldStyle,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                                    style: AppStyles.lightStyle,
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  SizedBox(
                                    width: Get.width,
                                    height: 40,
                                    child: CommonDropDownField(
                                      hinttext: 'Select Address',
                                      controller: _.address,
                                      placeholder: "Select Address",
                                      values: _.dropDownList,
                                      checkedvalue: _.address,
                                      screenController: _,
                                      fillcolor: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ).marginOnly(
                                  left: 20, right: 20, top: 16, bottom: 10)),
                          const SizedBox(
                            height: 20,
                          ),
                          CommonContainer(
                              height: 200,
                              content: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Cancellation Charges",
                                        style: AppStyles.boldStyle,
                                      ),
                                      Text(
                                        "${_.value}%",
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.red),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  SfSlider(
                                    activeColor: const Color(0xffF8AA16),
                                    inactiveColor: Colors.black,
                                    showTicks: true,
                                    enableTooltip: true,
                                    min: 0.0,
                                    max: 100.0,
                                    value: _.value,
                                    onChanged: (dynamic newValue) {
                                      _.value = newValue;
                                      _.update();
                                    },
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                                    style: AppStyles.lightStyle,
                                  ),
                                ],
                              ).marginOnly(
                                  left: 20, right: 20, top: 13, bottom: 24)),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      )
                    : const SizedBox(),
                CommonContainer(
                    height: 150,
                    content: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Apply Business Profile",
                                style: AppStyles.boldStyle),
                            Switch(
                                activeColor: Colors.white,
                                inactiveThumbColor: Colors.white,
                                inactiveTrackColor: Colors.black,
                                activeTrackColor: AppColors.primaryColor,
                                value: _.applyBussinessProfile,
                                onChanged: (value) {
                                  if (_.applyBussinessProfile == true) {
                                    _.applyBussinessProfile = false;
                                    _.update();
                                  } else {
                                    _.applyBussinessProfile = true;
                                    _.update();
                                  }
                                }),
                          ],
                        ),
                        const Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                            style: AppStyles.lightStyle),
                      ],
                    ).marginOnly(left: 20, right: 20, top: 13, bottom: 24)),
                const SizedBox(
                  height: 20,
                ),
                _.applyBussinessProfile == true
                    ? Column(
                        children: [
                          CommonContainer(
                              height: 200,
                              content: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Business Profile",
                                    style: AppStyles.boldStyle,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    "Select the Business Profile You Wish to Show on invoice.",
                                    style: AppStyles.lightStyle,
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  SizedBox(
                                    width: Get.width,
                                    height: 40,
                                    child: CommonDropDownField(
                                      hinttext: 'Select Address',
                                      controller: _.address,
                                      placeholder: "Select Address",
                                      values: _.dropDownList,
                                      checkedvalue: _.address,
                                      screenController: _,
                                      fillcolor: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    height: 40,
                                    width: Get.width,
                                    decoration: const BoxDecoration(
                                        color: AppColors.primaryColor,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(AppStrings.createAddress,
                                            style: AppStyles.whiteLightStyle),
                                      ],
                                    ),
                                  )
                                ],
                              ).marginOnly(
                                  left: 20, right: 20, top: 16, bottom: 10)),
                          const SizedBox(
                            height: 20,
                          ),
                          CommonContainer(
                              height: 150,
                              content: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "VAT Rate (%)",
                                    style: AppStyles.boldStyle,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    "Select VAT Rate",
                                    style: AppStyles.lightStyle,
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  SizedBox(
                                    width: Get.width,
                                    height: 40,
                                    child: CommonDropDownField(
                                      hinttext: 'Select Address',
                                      controller: _.address,
                                      placeholder: "Select Address",
                                      values: _.dropDownList,
                                      checkedvalue: _.address,
                                      screenController: _,
                                      fillcolor: Colors.white,
                                    ),
                                  ),
                                ],
                              ).marginOnly(
                                  left: 20, right: 20, top: 16, bottom: 10)),
                        ],
                      )
                    : const SizedBox(),
                const SizedBox(
                  height: 20,
                ),
                CommonContainer(
                    height: _.callOutCharges == true ? 170 : 120,
                    content: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Callout Charges",
                                style: AppStyles.boldStyle),
                            Switch(
                                activeColor: Colors.white,
                                inactiveThumbColor: Colors.white,
                                inactiveTrackColor: Colors.black,
                                activeTrackColor: AppColors.primaryColor,
                                value: _.callOutCharges,
                                onChanged: (value) {
                                  if (_.callOutCharges == true) {
                                    _.callOutCharges = false;
                                    _.update();
                                  } else {
                                    _.callOutCharges = true;
                                    _.update();
                                  }
                                }),
                          ],
                        ),
                        const Text(
                            "If you would like to offer a callout service which will show on your service profile.",
                            style: AppStyles.lightStyle),
                        _.callOutCharges == true
                            ? Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Radio<String>(
                                        activeColor: const Color(0xffF8AA16),
                                        value: 'Start at',
                                        groupValue: _.selectedrating,
                                        onChanged: (value) {
                                          _.selectedrating = value!;
                                          _.isStartAt = true;
                                          _.isFixed = false;
                                          _.isFree = false;
                                          _.isvaries = false;
                                          _.update();
                                        },
                                      ),
                                      const Text(
                                        "Start at",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Radio<String>(
                                        activeColor: const Color(0xffF8AA16),
                                        value: 'Fixed',
                                        groupValue: _.selectedrating,
                                        onChanged: (value) {
                                          _.selectedrating = value!;
                                          _.isFixed = true;
                                          _.isFree = false;
                                          _.isStartAt = false;
                                          _.isvaries = false;
                                          _.update();
                                        },
                                      ),
                                      const Text(
                                        "Fixed",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Radio<String>(
                                        activeColor: const Color(0xffF8AA16),
                                        value: 'Varies',
                                        groupValue: _.selectedrating,
                                        onChanged: (value) {
                                          _.selectedrating = value!;
                                          _.isvaries = true;
                                          _.isFixed = false;
                                          _.isFree = false;
                                          _.isvaries = false;
                                          _.update();
                                        },
                                      ),
                                      const Text(
                                        "Varies",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Radio<String>(
                                        activeColor: const Color(0xffF8AA16),
                                        value: 'Free',
                                        groupValue: _.selectedrating,
                                        onChanged: (value) {
                                          _.selectedrating = value!;
                                          _.isFixed = false;
                                          _.isFree = true;
                                          _.isStartAt = false;
                                          _.isvaries = false;
                                          _.update();
                                        },
                                      ),
                                      const Text(
                                        "Free",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ],
                              ).marginSymmetric(vertical: 10)
                            : const SizedBox()
                      ],
                    ).marginOnly(left: 20, right: 20, top: 13, bottom: 10)),
                const SizedBox(
                  height: 20,
                ),
                CommonContainer(
                    height: 120,
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Service Price Type",
                          style: AppStyles.boldStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Radio<String>(
                                  activeColor: const Color(0xffF8AA16),
                                  value: 'Start at',
                                  groupValue: _.selectedrating,
                                  onChanged: (value) {
                                    _.selectedrating = value!;
                                    _.isStartAt = true;
                                    _.isFixed = false;
                                    _.isFree = false;
                                    _.isvaries = false;
                                    _.update();
                                  },
                                ),
                                const Text(
                                  "Start at",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Radio<String>(
                                  activeColor: const Color(0xffF8AA16),
                                  value: 'Fixed',
                                  groupValue: _.selectedrating,
                                  onChanged: (value) {
                                    _.selectedrating = value!;
                                    _.isFixed = true;
                                    _.isFree = false;
                                    _.isStartAt = false;
                                    _.isvaries = false;
                                    _.update();
                                  },
                                ),
                                const Text(
                                  "Fixed",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Radio<String>(
                                  activeColor: const Color(0xffF8AA16),
                                  value: 'Varies',
                                  groupValue: _.selectedrating,
                                  onChanged: (value) {
                                    _.selectedrating = value!;
                                    _.isvaries = true;
                                    _.isFixed = false;
                                    _.isFree = false;
                                    _.isvaries = false;
                                    _.update();
                                  },
                                ),
                                const Text(
                                  "Varies",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        ).marginSymmetric(vertical: 10)
                      ],
                    ).marginOnly(left: 20, right: 20, top: 13, bottom: 10)),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  height: 40,
                  width: Get.width,
                  decoration: const BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const Center(
                      child: Text("Submit", style: AppStyles.whiteLightStyle)),
                )
              ],
            ).marginOnly(top: 20, bottom: 20, left: 17, right: 17),
          );
        });
  }
}
