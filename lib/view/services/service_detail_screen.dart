import 'package:beeanytime/constants/app_libraries.dart';
import 'package:beeanytime/controllers/services/service_detail_controller.dart';

class ServiceDetail extends StatelessWidget {
  const ServiceDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leadingWidth: 20,
        centerTitle: true,
        title: const Text(
          "Service Detail",
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
    return GetBuilder<ServiceDetailController>(
        init: ServiceDetailController(),
        builder: (_) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    maxRadius: 40,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Service Detail",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: AppColors.textColor),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "51296",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.textColor),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  serviceTile("Service Detail", "Hair & Beauty"),
                  const SizedBox(
                    height: 7,
                  ),
                  serviceTile("Posted Date", "15-04-2022"),
                  const SizedBox(
                    height: 7,
                  ),
                  serviceTile("Status", "Booking is not confirmed yet"),
                  const SizedBox(
                    height: 7,
                  ),
                  serviceTile(
                      "Service Category", "Hair & Beauty Nail Technician"),
                  const SizedBox(
                    height: 7,
                  ),
                  serviceTile("Request Type", "Open Request"),
                  const SizedBox(
                    height: 7,
                  ),
                  serviceTile(
                      "Address", "Your Address is hidden for Providers"),
                  const SizedBox(
                    height: 7,
                  ),
                  serviceTile("Time of Service", "19-04-2022"),
                ],
              ).marginOnly(left: 15, top: 30, bottom: 30),
              Container(
                height: 150,
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
                        AppStrings.serviceaddress,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: AppColors.textColor),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          alignment: Alignment.center,
                          height: 18,
                          width: 18,
                          decoration: const BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                          child: const Icon(
                            Icons.chevron_right,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      serviceTile(AppStrings.location,
                          "The Poweder Room, 1 Red Bank Road"),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          serviceTile(AppStrings.area, "Bispham"),
                          serviceTile(AppStrings.city, "Bispham"),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          serviceTile(AppStrings.country, "Bispham"),
                          serviceTile(AppStrings.postcode, "Bispham"),
                        ],
                      ),
                    ]).marginSymmetric(horizontal: 16, vertical: 14),
              ).marginSymmetric(horizontal: 18),
              Column(
                children: const [
                  Text(
                    "Provider selected for the service request",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: AppColors.textColor),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "No Provider selected for this service request yet.",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textColor),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Providers who applied for service request",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: AppColors.textColor),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "No Providers applied for this service request yet.",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textColor),
                  ),
                ],
              ).marginOnly(left: 15, top: 20)
            ],
          ).marginOnly(left: 19, top: 20);
        });
  }

  Widget serviceTile(String title, String description) {
    return GetBuilder<ServiceDetailController>(
        init: ServiceDetailController(),
        builder: (_) {
          return Row(
            children: [
              Text(
                title + ": ",
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textColor),
              ),
              Text(
                description,
                maxLines: 2,
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: title == "Service Category"
                        ? AppColors.primaryColor
                        : AppColors.textColor),
              )
            ],
          );
        });
  }
}
