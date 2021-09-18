import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Navbar extends StatelessWidget {
  //const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopNavbar();
      } else if (constraints.maxWidth > 700 && constraints.maxWidth < 1200) {
        return DesktopNavbar();
      } else {
        return MobileNavbar();
      }
    });
  }
}

class DesktopNavbar extends StatefulWidget {
  const DesktopNavbar({Key? key}) : super(key: key);

  @override
  _DesktopNavbarState createState() => _DesktopNavbarState();
}

class _DesktopNavbarState extends State<DesktopNavbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('MakeUp Squad',
              style: TextStyle(
                  color: Colors.pinkAccent[400],
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Grechen')),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Home',
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.pinkAccent[400],
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(width: 40),
              Text(
                'Book',
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.pinkAccent[400],
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(width: 40),
              Text(
                'About',
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.pinkAccent[400],
                    fontWeight: FontWeight.w400),
              ),
              MaterialButton(
                  child: Text('Get Started',
                      style: TextStyle(
                        backgroundColor: Colors.pinkAccent[400],
                        color: Colors.white,
                        fontSize: 25.0,
                      )),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(45.0))))
            ],
          )
        ],
      ),
    );
  }
}

class MobileNavbar extends StatefulWidget {
  //MobileNavbar({Key? key}) : super(key: key);

  @override
  _MobileNavbarState createState() => _MobileNavbarState();
}

class _MobileNavbarState extends State<MobileNavbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Text('MakeUp Squad',
            style: TextStyle(
                color: Colors.pinkAccent[400],
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Grechen')),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Home',
              style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.pinkAccent[400],
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(width: 30),
            Text(
              'Book',
              style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.pinkAccent[400],
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(width: 30),
            Text(
              'About',
              style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.pinkAccent[400],
                  fontWeight: FontWeight.w400),
            ),
          ],
        )
      ],
    ));
  }
}
