import 'package:beeanytime/constants/app_libraries.dart';
import 'package:beeanytime/constants/app_textStyles.dart';
import 'package:beeanytime/controllers/badge/manage_badge_controller.dart';
import 'package:beeanytime/widgets/common_container.dart';

class ManageBadge extends StatelessWidget {
  const ManageBadge({Key? key}) : super(key: key);

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
  }

  Widget bodyData(BuildContext context) {
    return GetBuilder<ManageBadgeController>(
        init: ManageBadgeController(),
        builder: (_) {
          return Column(
            children: [
              CommonContainer(
                  height: 150,
                  content: Column(
                    children: [
                      const Text(
                        'Upload your certification to your service detail area in order to display certified badge to the public.',
                        style: AppStyles.lightStyle,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 40,
                        width: Get.width,
                        decoration: const BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.all(Radius.circular(6))),
                        child: const Center(
                          child: Text(AppStrings.manageBadge,
                              style: AppStyles.whiteLightStyle),
                        ),
                      )
                    ],
                  ).marginAll(15))
            ],
          ).marginAll(15);
        });
  }
}
