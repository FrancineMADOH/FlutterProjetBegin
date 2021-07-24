import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  //const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Our awesome App'),
          centerTitle: true,
          backgroundColor: Colors.pinkAccent[200]),

      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Text('Exploring the padding widget'),
      ),

      /*//exploring the container widget
       body: Container(
        padding: EdgeInsets.fromLTRB(15.0, 3.0, 5.0, 3.0),
        margin: EdgeInsets.all(8.0),
        color: Colors.grey[200],
        child: Text('Hello world'),
      ),
      */
      /*   icon as a button
        child: IconButton(
          onPressed: () {
            print('you click a button as button');
          },
          icon: Icon(Icons.access_alarm_rounded, size: 80.0),
          color: Colors.deepPurple,
        ),*/
      /*Icon button 
          child: RaisedButton.icon(
              onPressed: () {
                print('you just click an icon button');
              },
              icon: Icon(Icons.access_alarms),
              label: Text('Wake up man'),
              color: Colors.blue)*/
      /* the flat button
          child: FlatButton(
        onPressed: () {
          print('you clicked a raised button');
        },
        child: Text('Flat button'),
        color: Colors.redAccent,
      )*/
      /* Raised Butons
          child: RaisedButton(
        onPressed: () {},
        child: Text('click here'),
        color: Colors.deepPurple,
      )*/

      /*icons */
      //   child: Icon(
      //   Icons.star,
      //   color: Colors.blueGrey,
      //   size: 50.0,
      // )
      /*
       //shorcut for adding images Image.network('link to image'), Image.asset('path to image)
      child: Image.network(
          'https://images.unsplash.com/photo-1605440190093-b67e90c96235?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmluamFzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')

      insert a local image
        child:Image(
        image: AssetImage('images/ninja1.webp'),
      )
      inserting a network image
      child: Image(
          image: NetworkImage(
              'https://images.unsplash.com/photo-1605440190093-b67e90c96235?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmluamFzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'))
      colors, text and font management

      child: Text('NinjaApp',
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            color: Colors.blue[500],
            fontFamily: 'Qahiri',
          ))*/
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Text('click me'),
        backgroundColor: Colors.pinkAccent[200],
      ),
    );
  }
}
