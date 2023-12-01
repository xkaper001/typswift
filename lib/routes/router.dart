import 'package:go_router/go_router.dart';
import 'package:typswift/features/home/homescreen.dart';
import 'package:typswift/responsive/responsive_layout.dart';

import '../responsive/desktop_scaffold.dart';
import '../responsive/mobile_scaffold.dart';
import '../responsive/tablet_scaffold.dart';

final router = GoRouter(initialLocation: '/onboard', routes: [
  GoRoute(
    path: '/onboard',
    builder: (context, state) => const ResponsiveLayout(
      mobileScaffold: MobileScaffold(),
      tabletScaffold: TabletScaffold(),
      desktopScaffold: DesktopScaffold(),
    ),
  ),
  GoRoute(
    path: '/home',
    builder: (context, state) => const HomeScreen(),
  ),
]);
