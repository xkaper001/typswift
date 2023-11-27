// packages include flutter_riverpod, go_router, appwrite, etc...

// Todos

// 1. Update App details in Pubspec.yaml
// 2. Update Android App Details in "/android/app/src/main/AndroidManifest.xml"
// 3. Update iOS App details in "/ios/Runner/Info.plist"
// 4. Update Windoes App details in "windows/runner/Runner.rc"
// 5. Update Linux App details in "linux/CMakeLists.txt"

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:typswift/constants/palette.dart';

import './responsive/responsive_layout.dart';
import './responsive/mobile_scaffold.dart';
import './responsive/tablet_scaffold.dart';
import './responsive/desktop_scaffold.dart';
import 'style.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Palette.black,
        statusBarIconBrightness: Brightness.light
      )
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold(),
      ),
      theme: AppStyle.themeData,
    );
  }
}
