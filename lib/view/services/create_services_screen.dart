import 'package:beeanytime/constants/app_libraries.dart';
import 'package:beeanytime/controllers/services/create_services_controller.dart';
import 'package:beeanytime/widgets/commn_textfield.dart';
import 'package:beeanytime/widgets/common_dropdown.dart';
import 'package:intl/intl.dart';

class CreateServices extends StatelessWidget {
  const CreateServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leadingWidth: 20,
        centerTitle: true,
        title: const Text(
          AppStrings.createservice,
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
      body: bodydata(context),
    );
  }

  Widget bodydata(BuildContext context) {
    return GetBuilder<CreateServicesController>(
        init: CreateServicesController(),
        builder: (_) {
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //-------------------- Category Name ------------------
                Row(
                  children: const [
                    Text(
                      AppStrings.selectedcategory + ":",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: AppColors.textColor),
                    ),
                    Text(
                      "Hair & Beauty Nail Technician",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: AppColors.primaryColor),
                    ),
                  ],
                ).marginOnly(left: 20, bottom: 20),
                // ------------------ request Description -------------------
                Container(
                  height: 170,
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
                          AppStrings.requestDescription,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: AppColors.textColor),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        CommonTextField(
                          controller: _.requestDescription,
                          fillcolor: Colors.white,
                          hintText: "Enter Request Description",
                          radius: 6,
                          maxlines: 3,
                        )
                      ]).marginOnly(left: 20, right: 20, top: 13, bottom: 22),
                ).marginSymmetric(horizontal: 20, vertical: 27),
                //------------- Choose Services Type of Services ----------
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      AppStrings.chooseresponse,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: AppColors.textColor),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio<String>(
                              activeColor: const Color(0xffF8AA16),
                              value: 'ASAP',
                              groupValue: _.selectedrating,
                              onChanged: (value) {
                                _.selectedrating = value!;
                                _.isAddressShown = true;
                                _.isDateShown = false;
                                _.update();
                              },
                            ),
                            const Text(
                              "ASAP",
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
                              value: 'Choose Date',
                              groupValue: _.selectedrating,
                              onChanged: (value) {
                                _.selectedrating = value!;
                                _.isDateShown = true;
                                _.isAddressShown = false;
                                _.update();
                              },
                            ),
                            const Text(
                              "Choose Date",
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
                              value: 'Not Sure',
                              groupValue: _.selectedrating,
                              onChanged: (value) {
                                _.selectedrating = value!;
                                _.isDateShown = false;
                                _.isAddressShown = false;
                                _.update();
                              },
                            ),
                            const Text(
                              "Not Sure",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ).marginSymmetric(vertical: 20),
                    _.isAddressShown == true
                        ? Container(
                            height: 130,
                            width: Get.width,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color(0xff000000).withOpacity(0.2),
                                  spreadRadius: 3,
                                  blurRadius: 20,
                                  offset: const Offset(
                                      0, 4), // changes position of shadow
                                ),
                              ],
                              color: const Color(0xfff0f0f0),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
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
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  SizedBox(
                                    width: Get.width,
                                    height: 40,
                                    child: CommonDropDownField(
                                      controller: _.address,
                                      placeholder: "Select Address",
                                      values: _.dropDownList,
                                      checkedvalue: _.address,
                                      screenController: _,
                                      fillcolor: Colors.white,
                                    ),
                                  )
                                ]).marginOnly(
                                left: 20, right: 20, top: 13, bottom: 26),
                          )
                        : _.isDateShown == true
                            ? Column(
                                children: [
                                  Container(
                                    height: 130,
                                    width: Get.width,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color(0xff000000)
                                              .withOpacity(0.2),
                                          spreadRadius: 3,
                                          blurRadius: 20,
                                          offset: const Offset(0,
                                              4), // changes position of shadow
                                        ),
                                      ],
                                      color: const Color(0xfff0f0f0),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10)),
                                    ),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const Text(
                                            AppStrings.date,
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                                color: AppColors.textColor),
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          // --------------------- show calendar --------------------------
                                          Container(
                                              height: 40,
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                color: Colors.white,
                                              ),
                                              child: Center(
                                                  child: TextField(
                                                controller: _.dateinput,
                                                decoration:
                                                    const InputDecoration(
                                                        contentPadding:
                                                            EdgeInsets.all(10),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius.all(
                                                            Radius.circular(
                                                                0.0),
                                                          ),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius.all(
                                                            Radius.circular(
                                                                0.0),
                                                          ),
                                                        ),
                                                        suffixIcon: Icon(Icons
                                                            .arrow_drop_down),
                                                        hintText:
                                                            "Enter Date" //label text of field
                                                        ),
                                                readOnly:
                                                    true, //set it true, so that user will not able to edit text
                                                onTap: () async {
                                                  DateTime? pickedDate =
                                                      await showDatePicker(
                                                          context: context,
                                                          initialDate:
                                                              DateTime.now(),
                                                          firstDate: DateTime(
                                                              2000), //DateTime.now() - not to allow to choose before today.
                                                          lastDate:
                                                              DateTime(2101));

                                                  if (pickedDate != null) {
                                                    print(
                                                        pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                                    String formattedDate =
                                                        DateFormat('yyyy-MM-dd')
                                                            .format(pickedDate);
                                                    print(
                                                        formattedDate); //formatted date output using intl package =>  2021-03-16
                                                    //you can implement different kind of Date Format here according to your requirement

                                                    _.dateinput.text =
                                                        formattedDate;
                                                    _.update(); //set output date to TextField value.

                                                  } else {
                                                    print(
                                                        "Date is not selected");
                                                  }
                                                },
                                              )))
                                        ]).marginOnly(
                                        left: 20,
                                        right: 20,
                                        top: 13,
                                        bottom: 26),
                                  ),
                                  const SizedBox(
                                    height: 23,
                                  ),
                                  Container(
                                    height: 180,
                                    width: Get.width,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color(0xff000000)
                                              .withOpacity(0.2),
                                          spreadRadius: 3,
                                          blurRadius: 20,
                                          offset: const Offset(0,
                                              4), // changes position of shadow
                                        ),
                                      ],
                                      color: const Color(0xfff0f0f0),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10)),
                                    ),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const Text(
                                            AppStrings.serviceaddress,
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                                color: AppColors.textColor),
                                          ),
                                          SizedBox(
                                            width: Get.width,
                                            height: 40,
                                            child: CommonDropDownField(
                                              controller: _.address,
                                              placeholder: "Select Address",
                                              values: _.dropDownList,
                                              checkedvalue: _.address,
                                              screenController: _,
                                              fillcolor: Colors.white,
                                            ),
                                          ).marginSymmetric(vertical: 15),
                                          // ------------------ create address -------------------
                                          GestureDetector(
                                            onTap: (){
                                              
                                            },
                                            child: Container(
                                              height: 40,
                                              decoration: const BoxDecoration(
                                                color: AppColors.primaryColor,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(6)),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: const [
                                                  Text(AppStrings.createAddress,
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      )),
                                                  Icon(Icons.add,
                                                      color: Colors.white)
                                                ],
                                              ).marginSymmetric(horizontal: 10),
                                            ),
                                          )
                                        ]).marginOnly(
                                        left: 20,
                                        right: 20,
                                        top: 13,
                                        bottom: 26),
                                  )
                                ],
                              )
                            : Container(),
                    const SizedBox(
                      height: 26,
                    ),
                    // --------------------- hide address -----------------------------
                    Container(
                      height: _.hideAddress == true ? 250 : 130,
                      width: Get.width,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xff000000).withOpacity(0.2),
                            spreadRadius: 3,
                            blurRadius: 20,
                            offset: const Offset(
                                0, 4), // changes position of shadow
                          ),
                        ],
                        color: const Color(0xfff0f0f0),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  AppStrings.hide,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.textColor),
                                ),
                                Switch(
                                    activeColor: AppColors.primaryColor,
                                    inactiveThumbColor: Colors.white,
                                    inactiveTrackColor: Colors.black,
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
                            const SizedBox(
                              height: 15,
                            ),
                            _.hideAddress == true
                                ? const Text(
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, When an unknown printer took a galley of type and scrambled it to make a type specimen book.")
                                : Container()
                          ])
                          .marginOnly(left: 20, right: 20, top: 13, bottom: 26),
                    ).marginOnly(bottom: 50),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 50,
                        width: 190,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color(0xffF8AA16)),
                        child: const Center(
                          child: Text(
                            "Submit",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ).marginOnly(left: 30, right: 20)
              ],
            ).marginOnly(top: 18, left: 10, right: 10, bottom: 20),
          );
        });
  }
}
