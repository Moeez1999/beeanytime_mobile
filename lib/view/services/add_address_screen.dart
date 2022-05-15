import 'package:beeanytime/constants/app_libraries.dart';
import 'package:beeanytime/controllers/services/add_address_controller.dart';
import 'package:beeanytime/widgets/commn_textfield.dart';

class CreateAddress extends StatelessWidget {
  const CreateAddress({Key? key}) : super(key: key);

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
      body: bodyData(context),
    );
  }

  Widget bodyData(context) {
    return GetBuilder<AdressController>(
        init: AdressController(),
        builder: (_) {
          return Column(
            children: [
              Container(
                height: 130,
                width: Get.width,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff000000).withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 20,
                      offset: const Offset(0, 4), // changes position of shadow
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
                        AppStrings.postCode,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: AppColors.textColor),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CommonTextField(
                        controller: _.postcode,
                        fillcolor: Colors.white,
                        hintText: "Enter Postcode",
                        radius: 6,
                        maxlines: 1,
                      ),
                    ]).marginOnly(left: 20, right: 20, top: 13, bottom: 22),
              ).marginSymmetric(horizontal: 20, vertical: 37),
              GestureDetector(
                onTap: (){},
                child: Container(
                  height: 50,
                  width: 240,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xffF8AA16)),
                  child: const Center(
                    child: Text(
                      "Search Address by Postcode",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ).marginOnly(top: 30);
        });
  }
}
