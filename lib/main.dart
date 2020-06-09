import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );
class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        title: Text("Ask Me Anything",
        ),
        backgroundColor: Colors.teal,
      ),
      body: Ball(),
    );
  }
}
class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int number=1;
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                child: Image.asset('images/ball$number.png'),
                onPressed: (){
                  print('I got Clicked');
                  setState(() {
                    number=Random().nextInt(5)+1;
                  });
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}

