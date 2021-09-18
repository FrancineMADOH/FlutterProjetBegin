import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  //const LandingPage({Key? key}) : super(key: key);
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        padding: EdgeInsets.all(45.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text('MakeUp Squad',
                style: TextStyle(
                    color: Colors.pinkAccent[400],
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Grechen')),
            SizedBox(
              height: 40,
            ),
            Text(
              'Lorem ipsum dolor sit amet, sem,Praesent eu consectetur erat. Nulla dictum sodales elit, faucibus venenatis ex dignissim id. Sed sollicitudin sagittis neque, at fringilla erat eleifend eget. cursus sit amet fringilla non. Cras quis feugiat nequ Nulla convallis cursus tortor, non gravida felis blandit in.',
              style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 40,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(45.0))),
              onPressed: () {},
              child: Text('Contact Us',
                  style: TextStyle(
                    backgroundColor: Colors.pinkAccent[400],
                    color: Colors.white,
                    fontSize: 25.0,
                  )),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Image.asset(
                '/images/team.jpg',
                width: width,
              ),
              //fit: BoxFit.fill,
            )
          ],
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: pageChildren(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}
