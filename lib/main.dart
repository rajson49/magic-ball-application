import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: MagicBall(),
      ),
    );


class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {

  var image_number=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Center(
        child: FlatButton(
            onPressed: (){
              setState(() {
                image_number=Random().nextInt(5)+1;
                print(image_number);
              });
            },
            child: Image.asset('images/ball$image_number.png'),
        ),
      )
    );
  }
}
