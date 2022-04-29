import 'package:beeanytime/constants/app_colors.dart';
import 'package:beeanytime/constants/app_libraries.dart';
import 'package:beeanytime/controllers/scafold_controller.dart';
import 'package:beeanytime/widgets/commn_textfield.dart';

class CommonScaffold extends StatelessWidget {
  final Widget? bodyData;
  final bool showFAB;
  final bool showAppBar;
  final bool extendBodyBehindAppBar;
  final double appbarelevation;
  final bool showDrawer;
  final Widget? appbarTitle;
  final Color? backGroundColors;
  final Color? appbarcolor;
  final Color? backarrow;
  final List<Widget>? actions;
  final Key? scaffoldKey;
  final bool showBottomNav;
  final IconData floatingIcon;
  final bool centerDocked;
  final bool automaticallyImplyLeading;
  final Widget? leading;
  final bool? twofields;

  const CommonScaffold({
    Key? key,
    this.bodyData,
    this.automaticallyImplyLeading = true,
    this.backarrow,
    this.appbarelevation = 0.0,
    this.appbarcolor,
    this.appbarTitle,
    this.leading,
    this.actions,
    this.showFAB = false,
    this.showDrawer = false,
    this.showAppBar = false,
    this.extendBodyBehindAppBar = false,
    this.backGroundColors,
    this.scaffoldKey,
    this.twofields,
    this.showBottomNav = false,
    this.centerDocked = false,
    this.floatingIcon = Icons.add,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ScaffoldController>(
        init: ScaffoldController(),
        builder: (_) {
          return Scaffold(
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: true,
            key: scaffoldKey,
            appBar: showAppBar
                // <<------------- show appbar in the app ------------>>
                ? AppBar(
                    leadingWidth: 10,
                    iconTheme: IconThemeData(
                      color: backarrow ?? const Color(0xff1A1B1E),
                    ),
                    elevation: appbarelevation,
                    automaticallyImplyLeading: automaticallyImplyLeading,
                    leading: InkWell(
                        child: const Icon(
                          Icons.keyboard_arrow_left,
                          size: 30,
                        ),
                        onTap: () {
                          Get.back();
                        }),

                    // <<------------- leading icon  ------------>>
                    //leading: leading,
                    backgroundColor: appbarcolor,
                    // <<------------- appbar title ------------>>
                    title: twofields == false
                        ? CommonTextField(
                            suffixicon:
                                const Icon(Icons.search, color: Colors.black),
                            controller: _.search,
                            hintText: AppStrings.textfieldhint,
                          )
                        : Row(
                            children: [
                              Flexible(
                                child: CommonTextField(
                                  prefixIcon: Icons.search,
                                  controller: _.search,
                                  hintText: "Categories ...",
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Flexible(
                                child: CommonTextField(
                                  prefixIcon: Icons.gps_fixed_outlined,
                                  controller: _.search,
                                  hintText: "Postcode",
                                ),
                              ),
                            ],
                          ),
                    actions: [
                      
                       Row(
                        children: [
                          appBarContainer(AppColors.primaryColor, Icons.refresh,
                              Colors.white),
                          appBarContainer(AppColors.lightgreyColor,
                                  Icons.favorite_border, Colors.red)
                              .marginSymmetric(horizontal: 5),
                          appBarContainer(
                              Colors.black, Icons.sms_outlined, Colors.white),
                        ],
                      ).marginOnly(left: 15, right: 10)
                    ],
                    centerTitle: true,
                  )
                : null,
            // <<------------- side menu ------------>>
            //drawer: showDrawer ? const NavigationDrawer() : null,
            // extendBodyBehindAppBar: extendBodyBehindAppBar,
            body: OrientationBuilder(builder: (context, orientation) {
              return Container(
                decoration: BoxDecoration(
                  color: backGroundColors ?? const Color(0xffffffff),
                ),
                width: (MediaQuery.of(context).size.width.ceil()).toDouble(),
                height: (MediaQuery.of(context).size.height.ceil()).toDouble(),
                child: bodyData,
              );
            }),

            // <<------------- floating ation button ------------>>
            floatingActionButton: showFAB ? const SizedBox() : null,
            floatingActionButtonLocation: centerDocked
                ? FloatingActionButtonLocation.centerDocked
                : FloatingActionButtonLocation.endFloat,

            // <<------------- footer of the app ------------>>
            bottomNavigationBar: showBottomNav ? const SizedBox() : null,
          );
        });
  }

  Widget appBarContainer(Color color, IconData icon, Color iconColor) {
    return Container(
      height: 35,
      width: 35,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      child: Center(
          child: Icon(
        icon,
        color: iconColor,
        size: 22,
      )),
    );
  }
}
