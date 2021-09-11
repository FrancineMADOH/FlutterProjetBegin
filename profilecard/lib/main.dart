import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  //const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green[250],
          title: Text('Profile',
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ))),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                height: 200,
                width: 200,
                child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://diana-cdn.naturallycurly.com/Articles2.0/3L0MXiTO2sm04sQoiuYCe/articleImages/8ca58952d548661fedefeb11b49f3cbb/15-braided-hairstyles-you-need-to-try-next-facebook-image.jpg'),
                            fit: BoxFit.fill))),
              ),
              Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                    Row(children: <Widget>[
                      Icon(Icons.female_outlined,
                          color: Colors.blue, size: 30.0),
                      SizedBox(
                        width: 5.0,
                        height: 5.0,
                      ),
                      Text('Madoh Francine',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w400))
                    ]),
                    Row(children: <Widget>[
                      Icon(Icons.work_outline, color: Colors.blue, size: 30.0),
                      SizedBox(
                        width: 5.0,
                        height: 5.0,
                      ),
                      Text('Fullstack Developer',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w400))
                    ]),
                    Row(children: <Widget>[
                      Icon(Icons.mail_outline, color: Colors.blue, size: 30.0),
                      SizedBox(
                        width: 5.0,
                        height: 5.0,
                      ),
                      Text('francinemadoh@gmail.com',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w400))
                    ]),
                    Row(children: <Widget>[
                      Icon(Icons.phone, color: Colors.blue, size: 30.0),
                      SizedBox(
                        width: 5.0,
                        height: 5.0,
                      ),
                      Text('673869974/693861216',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w400))
                    ]),
                    Row(children: <Widget>[
                      Icon(Icons.location_city, color: Colors.blue, size: 40.0),
                      SizedBox(
                        width: 2.0,
                        height: 2.0,
                      ),
                      Text('Yaounde',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w400))
                    ]),
                    Row(children: <Widget>[
                      Icon(Icons.add, color: Colors.blue, size: 30.0),
                      SizedBox(
                        width: 5.0,
                        height: 5.0,
                      ),
                      Text('Level: $level',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w400))
                    ]),
                  ])),
              Container(
                child: ElevatedButton(
                  onPressed: () => {
                    setState(() => {level += 1})
                  },
                  child: Text('Contact-Me',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              )
            ]),
      ),
    );
  }
}
