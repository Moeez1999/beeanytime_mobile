import 'package:beeanytime/constants/app_libraries.dart';
import 'package:beeanytime/constants/app_textStyles.dart';
import 'package:beeanytime/controllers/business_profile/create_ussiness_profile_controller.dart';
import 'package:beeanytime/widgets/commn_textfield.dart';
import 'package:beeanytime/widgets/common_container.dart';
import 'package:beeanytime/widgets/common_dropdown.dart';

class CreateBussinessProfile extends StatelessWidget {
  const CreateBussinessProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leadingWidth: 20,
        centerTitle: true,
        title: const Text(
          AppStrings.createBussinessProfile,
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
    return GetBuilder<CreateBussinessProfileController>(
        init: CreateBussinessProfileController(),
        builder: (_) {
          return SingleChildScrollView(
            child: Column(
              children: [
                CommonContainer(
                    height: 130,
                    content: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(AppStrings.vatRegistered,
                                style: AppStyles.boldStyle),
                            Switch(
                                activeColor: Colors.white,
                                inactiveThumbColor: Colors.white,
                                inactiveTrackColor: Colors.black,
                                activeTrackColor: AppColors.primaryColor,
                                value: _.isVATRegistered,
                                onChanged: (value) {
                                  if (_.isVATRegistered == true) {
                                    _.isVATRegistered = false;
                                    _.update();
                                  } else {
                                    _.isVATRegistered = true;
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
                Column(
                  children: [
                    CommonContainer(
                        height: 120,
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
                          ],
                        ).marginOnly(left: 20, right: 20, top: 16, bottom: 10)),
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
                              AppStrings.companyNumber,
                              style: AppStyles.boldStyle,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CommonTextField(
                              controller: _.servicetitle,
                              fillcolor: Colors.white,
                              hintText: "Enter Company Number",
                              radius: 6,
                              maxlines: 1,
                            )
                          ],
                        ).marginOnly(left: 20, right: 20, top: 16, bottom: 10)),
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
                              AppStrings.companyName,
                              style: AppStyles.boldStyle,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CommonTextField(
                              controller: _.servicedetail,
                              fillcolor: Colors.white,
                              hintText: "Enter Company Name",
                              radius: 6,
                              maxlines: 1,
                            )
                          ],
                        ).marginOnly(left: 20, right: 20, top: 16, bottom: 10)),
                    const SizedBox(
                      height: 20,
                    ),
                    _.isVATRegistered == true
                        ? CommonContainer(
                            height: 130,
                            content: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  AppStrings.vatNumber,
                                  style: AppStyles.boldStyle,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                CommonTextField(
                                  controller: _.servicedetail,
                                  fillcolor: Colors.white,
                                  hintText: "Enter VAT Number",
                                  radius: 6,
                                  maxlines: 1,
                                )
                              ],
                            ).marginOnly(
                                left: 20, right: 20, top: 16, bottom: 10))
                        : SizedBox()
                  ],
                )
              ],
            ).marginOnly(left: 15, right: 15, top: 15, bottom: 15),
          );
        });
  }
}
