import 'package:beeanytime/constants/app_libraries.dart';
import 'package:flutter/services.dart';

class HomeController extends GetxController {
  bool isLoading = false;
  late BetterPlayerController betterPlayerController;
  Duration startAt = const Duration();
  RxBool startTimer = false.obs;
  RxBool showBack = false.obs;
  TextEditingController search = TextEditingController();
  String videoPath =
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4';
  final List data = [
    {"url": "assets/images/Group 70.png"},
    {
      "url": "assets/images/Group 71.png",
    },
    {
      "url": "assets/images/Group 78.png",
    },
    {
      "url": "assets/images/Group 79.png",
    },
    {
      "url": "assets/images/Group 80.png",
    },
    {
      "url": "assets/images/Group 81.png",
    },
    {
      "url": "assets/images/Group 81.png",
    },
  ];

  bool isPlaying = false;
  @override
  void onInit() async {
    betterPlayerController = BetterPlayerController(
      BetterPlayerConfiguration(
        // showPlaceholderUntilPlay: true,
        aspectRatio: 16 / 9,
        looping: false,
        autoDispose: true,
        autoPlay: true,
        startAt: startAt,
        eventListener: (BetterPlayerEvent e) => eveB(e),
        controlsConfiguration: const BetterPlayerControlsConfiguration(
            enableAudioTracks: false,
            enablePip: false,
            enableOverflowMenu: false,
            enablePlayPause: false,
            enableProgressBar: true,
            enableFullscreen: true,
            forwardSkipTimeInMilliseconds: 10000,
            backwardSkipTimeInMilliseconds: 10000,
            progressBarPlayedColor: Colors.orange,
            progressBarBufferedColor: Color(0xff676767),
            progressBarBackgroundColor: Color(0xff676767)),
        fit: BoxFit.cover,
      ),
      betterPlayerDataSource: BetterPlayerDataSource(
        BetterPlayerDataSourceType.network,
        videoPath,
      ),
    );
  }

  void eveB(e) {
    if (e.betterPlayerEventType == BetterPlayerEventType.play) {
      startTimer(true);
      //Wakelock.enable();
    } else if (e.betterPlayerEventType == BetterPlayerEventType.pause) {
      startTimer(false);
    } else if (e.betterPlayerEventType ==
        BetterPlayerEventType.controlsVisible) {
      showBack(true);
    } else if (e.betterPlayerEventType ==
        BetterPlayerEventType.hideFullscreen) {
      SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    } else if (e.betterPlayerEventType ==
        BetterPlayerEventType.openFullscreen) {
      SystemChrome.setPreferredOrientations(
          [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
    }
  }
}
