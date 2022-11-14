part of '../controllers.dart';

class GameWebViewController {
  late final bool isLandscape;
  final GlobalKey<ScaffoldState> key = GlobalKey();
  final GlobalKey globalKey = GlobalKey();
  late InAppWebViewController webViewController;

  void initPage({required String url, required  bool isLandscape}) {
    if (isLandscape) {
      SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
    } else {
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    }
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    WidgetsBinding.instance.addObserver(GameWebViewPage(url: url,isLandscape: isLandscape,));
  }
}
