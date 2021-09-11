import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  //const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          centerTitle: true,
          backgroundColor: Colors.redAccent[400],
        ),
        body: Column(
          children: <Widget>[
            Container(
                padding: EdgeInsets.all(20.0),
                color: Colors.blueGrey[400],
                child: Image(image: AssetImage('/images/ninja1.webp'))),
            Column(
              children: <Widget>[
                Column(
                  children: [
                    Column(
                      children: [
                        Column(
                          children: [
                            Container(child: Text('Madoh Francine')),
                          ],
                        ),
                        Container(
                          child: Text('YAOUNDE-CAMEROON'),
                          // style: TextStyle(
                          //     fontSize: 20.0,
                          //     color: Colors.White,
                          //     fontFamily: 'Qahiri')
                        ),
                        Container(
                          child: Text('Fullstackdeveloper'),
                        ),
                        Container(
                          child: Text('francinemadoh@gmail.com'),
                        ),
                        Container(child: Text('673869974/693861216')),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Container(
                padding: EdgeInsets.all(40.0),
                color: Colors.blueGrey[400],
                child: ElevatedButton(
                  onPressed: () {
                    print('well you pressed this button');
                  },
                  child: Text(
                    'Contact Me',
                  ),
                ))
          ],
        ));
  }
}
