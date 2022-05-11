import 'package:beeanytime/constants/app_libraries.dart';
import 'package:beeanytime/controllers/services/add_address_details_controller.dart';
import 'package:beeanytime/widgets/commn_textfield.dart';

class AddAddressDetailsScreen extends StatelessWidget {
  const AddAddressDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leadingWidth: 20,
        centerTitle: true,
        title: const Text(
          AppStrings.addaddress,
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
    return GetBuilder<AddAddressDetailController>(
        init: AddAddressDetailController(),
        builder: (_) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: Get.height * 0.7,
                  width: Get.width,
                  decoration: const BoxDecoration(
                    color: Color(0xfff0f0f0),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Address",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: AppColors.textColor),
                        ),
                        buildAddressField(
                            "Fill Address", "Fill Address", _.filaddress),
                        buildAddressField("Area", "Area", _.area),
                        buildAddressField("City", "City", _.city),
                        buildAddressField("County", "County", _.country),
                        buildAddressField("postCode", "PostCode", _.postcode),
                      ]).marginSymmetric(horizontal: 20, vertical: 10),
                ).marginOnly(bottom: 30),
                Container(
                  height: 50,
                  width: Get.width,
                  decoration: const BoxDecoration(
                    color: Color(0xfff0f0f0),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Default Address",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: AppColors.textColor),
                      ).marginOnly(left: 20),
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
                          }).marginOnly(right: 20),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
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
                        "Change Postcode",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        contentPadding: const EdgeInsets.all(0),
                        content: Container(
                          height: 530,
                          width: Get.width,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xffF6F6F6)),
                          child: Column(
                            children: [
                              const Text(
                                " Service Posted",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ).marginOnly(top: 29, bottom: 10),
                              const Text(
                                "Successfully",
                                style: TextStyle(
                                    fontSize: 36,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Image.asset(AppAssets.success),
                              const SizedBox(
                                height: 60,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.back();
                                },
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: 60,
                                    width: 190,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        color: Color(0xffF8AA16)),
                                    child: const Center(
                                      child: Text(
                                        "OK",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 60,
                      width: 190,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: AppColors.textColor),
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
                  ),
                )
              ],
            ).marginSymmetric(horizontal: 19, vertical: 20),
          );
        });
  }

  Widget buildAddressField(
      String hinttext, String title, TextEditingController controller) {
    return GetBuilder<AddAddressDetailController>(
        init: AddAddressDetailController(),
        builder: (_) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textColor),
              ),
              CommonTextField(
                controller: controller,
                hintText: hinttext,
                fillcolor: Colors.white,
              ).marginSymmetric(vertical: 17)
            ],
          );
        });
  }
}
