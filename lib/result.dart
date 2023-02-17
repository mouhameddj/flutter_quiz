import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
    Result(this.resultScore,this.resetHandler);

    String get resultPhrase {
      String resultText ='you did it ! ';
      if(resultScore<=8) {
        resultText = 'You are awesome and innocnt !';
        } else if(resultScore<=16){
         resultText = 'pretty likeable !';
        } else if(resultScore<=16){
         resultText = 'You are .... strange !';
      } else {
        resultText = 'you are so bad !';
      }

      return resultText;
    }
  @override
  Widget build(BuildContext context) {
   
    return  Center(
  child: Column(
    children: <Widget>[
   Text(
    resultPhrase,
    textAlign: TextAlign.center,
   style: TextStyle(fontSize: 36 , fontWeight:FontWeight.bold) ,
  ),
  ElevatedButton(child: Text(
              'Restart Quiz'
          ),
          onPressed: resetHandler,
        
          ),

  ],
  ),
    );
  }
}