import 'package:flutter/material.dart';
import 'package:webapp/helpers/responsive_web.dart';
import 'package:webapp/widgets/large_screen.dart';
import 'package:webapp/widgets/small_screen.dart';
import 'package:webapp/widgets/top_navigation.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    return Scaffold(
        appBar: topNavigationBar(context, scaffoldKey),
        drawer: Drawer(),
        body: ResponsiveWidget(
          largeScreen: LargeScreen(),
          smallScreen: SmallScreen(),
        ));
  }
}
