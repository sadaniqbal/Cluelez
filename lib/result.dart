import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  String _backgroundImage;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  get resultPhrase {
    String resultText;
   
    if (resultScore <= 30) {
      resultText = 'Sorry, you failed to pass the test! We suggest you to take the the Deep Dive Cyber Certificate @ https://www.youtube.com/watch?v=yrln8nyVBLU';
      _backgroundImage = "images/lvl6.png";
    } else if (resultScore > 40 && resultScore <= 50) {
      resultText = 'You could have done better, Lets try go through this tutorial provided below! https://www.youtube.com/watch?v=vPlWDFtP0T0';
      _backgroundImage = "images/lvl2.png";
    } else if (resultScore > 50 && resultScore <= 60) {
      resultText = 'So closeee, lets try again by pressing the button provided below';
      _backgroundImage = "images/lvl6.png";
    } else {
      resultText = 'Congrats you aced the quiz, you seem to know alot! Here is something useful https://www.youtube.com/watch?v=DXgYJb67Fyc';
      _backgroundImage = "images/lvl5.png";
    }
    // print("$resultText");  
    // print("$_backgroundImage");
    // return ("$resultText"); 
    return resultText;
  }


  @override
  Widget build(BuildContext context) {
    return Center(

      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                decorationColor: Colors.yellow),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Restart Quiz',
            ),color: Colors.green,
            onPressed: resetHandler,
          ),
          FlatButton(
            child: Image.asset("$_backgroundImage"),
            // onPressed: resetHandler,
          ),
        ],
      ), 
    );
  }
}
