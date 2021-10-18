import 'package:flutter/material.dart';
import 'package:webapp/constants/app_style.dart';
import 'package:webapp/helpers/responsive_web.dart';
import 'package:webapp/widgets/custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
        leading: !ResponsiveWidget.isSmallScreen(context)
            ? Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 4.0),
                    child: Image.asset(
                      'images/logo.jpg',
                      width: 60,
                      height: 60,
                    ),
                  )
                ],
              )
            : IconButton(
                onPressed: () {
                  key.currentState.openDrawer();
                },
                icon: Icon(Icons.menu)),
        elevation: 0,
        title: Row(
          children: [
            Visibility(
                child: CustomText(
                    text: 'Dashboard',
                    color: lightGrey,
                    size: 20,
                    weight: FontWeight.normal)),
            Expanded(
              child: Container(),
            ),
            IconButton(
              icon: Icon(Icons.settings, color: dark),
              onPressed: () {},
            ),
            Stack()
          ],
        )
        // backgroundColor: Colors.white,
        );
