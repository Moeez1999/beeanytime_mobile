import 'package:beeanytime/constants/app_libraries.dart';
import 'package:beeanytime/controllers/seeker/seeker_profile_detail_controllers.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
class SeekerProfileDetailsScreen extends StatelessWidget {
  const SeekerProfileDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leadingWidth: 20,
        centerTitle: true,
        title: const Text(
          "Lyn Teg",
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
    return GetBuilder(
        init: SeekerProfileDetailController(),
        builder: (_) {
          return Column(
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Moeez Suleman",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          Image.asset(AppAssets.comment),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "0 Reviews",
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff1d1d1b)),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          RatingBar.builder(
                            itemSize: 15,
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              // rating = _.rating;
                              // _.update();
                            },
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          const Text(
                            "${6}",
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          const Text(
                            "(10)",
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: 37,
                    width: 37,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffF8AA16)),
                    child:
                        const Icon(Icons.share_outlined, color: Colors.white),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 37,
                    width: 37,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffF8AA16)),
                    child:
                        const Icon(Icons.favorite_outline, color: Colors.white),
                  ),
                ],
              ).marginOnly(top: 5, left: 15, right: 15, bottom: 20),
              Container(
                height: 115,
                width: Get.width,
                decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              )
            ],
          );
        });
  }
}
