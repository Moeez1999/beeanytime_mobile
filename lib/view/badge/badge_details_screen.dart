import 'package:beeanytime/constants/app_libraries.dart';
import 'package:beeanytime/controllers/badge/badge_details_controller.dart';
import 'package:beeanytime/widgets/common_container.dart';

import '../../constants/app_textStyles.dart';
import '../../widgets/common_dropdown.dart';

class BadgeDetail extends StatelessWidget {
  const BadgeDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leadingWidth: 20,
        centerTitle: true,
        title: const Text(
          AppStrings.manageBadge,
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
    ;
  }

  Widget bodyData(BuildContext context) {
    return GetBuilder<BAdgeDetailsController>(
        init: BAdgeDetailsController(),
        builder: (_) {
          return Column(
            children: [
              CommonContainer(
                  height: 120,
                  content: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        AppStrings.selectBadge,
                        style: AppStyles.boldStyle,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: Get.width,
                        height: 40,
                        child: CommonDropDownField(
                          hinttext: 'Select Badge',
                          controller: _.address,
                          placeholder: "Select Badge",
                          values: _.dropDownList,
                          checkedvalue: _.address,
                          screenController: _,
                          fillcolor: Colors.white,
                        ),
                      ),
                    ],
                  ).marginOnly(left: 20, right: 20, top: 16, bottom: 10)),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 40,
                width: Get.width,
                decoration: const BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(6))),
                child: const Center(
                  child: Text("Upload Certificate Image",
                      style: AppStyles.whiteLightStyle),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 140,
                width: 220,
                decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xffE8E8E8), width: 1),
                    color: const Color(0xffF6F6F6),
                    borderRadius: const BorderRadius.all(Radius.circular(6))),
                child: const Center(child: Text('No Image\n Available')),
              ),
              Spacer(),
              Container(
                height: 40,
                width: Get.width,
                decoration: const BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(6))),
                child: const Center(
                  child: Text("Add Badge to Service",
                      style: AppStyles.whiteLightStyle),
                ),
              ),
            ],
          ).marginAll(15);
        });
  }
}
