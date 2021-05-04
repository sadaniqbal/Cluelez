import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  get resultPhrase {
    String resultText;
    Image _backgroundImage;
    String _setImage;
    if (resultScore <= 20) {
      resultText = 'We are sorry, failed to pass the test! We suggest you to take the the Deep Dive Cyber Certificate @ https://www.youtube.com/watch?v=yrln8nyVBLU';
      _backgroundImage = Image.asset("images/lvl1.png");
    } else if (resultScore > 20 && resultScore <= 40) {
      resultText = 'You could have done better, Lets try go through this tutorial provided below! https://www.youtube.com/watch?v=vPlWDFtP0T0';
      _backgroundImage = Image.asset("images/lvl1.png");
    } else if (resultScore > 40 && resultScore <= 60) {
      resultText = 'So closeee, lets try again by pressing the button provided below';
      _backgroundImage = Image.asset("images/lvl1.png");
    } else if (resultScore > 60) {
      resultText = 'Congrats you aced the quiz, uou seem to know alot! However this video will be useful https://www.youtube.com/watch?v=DXgYJb67Fyc';
      _backgroundImage = Image.asset("images/lvl1.png");
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
            ),
            onPressed: resetHandler,
          ),
          FlatButton(
            child: Image.asset("images/civic.jpg"),
            // onPressed: resetHandler,
          ),
        ],
      ), 
    );
  }
}
