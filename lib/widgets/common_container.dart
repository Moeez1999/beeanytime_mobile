import '../constants/app_libraries.dart';

class CommonContainer extends StatelessWidget {
  final double height;
  final Widget content;

  const CommonContainer({Key? key, required this.height, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
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
        child: content);
  }
}
