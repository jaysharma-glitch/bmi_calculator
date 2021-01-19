import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reuseable_card.dart';

import '../main.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage(this.bmiResult, this.resultText, this.interpretation);

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Container(
            padding: EdgeInsets.all(15),
            alignment: Alignment.bottomLeft,
            child: Text("YOUR RESULT",
            style: kTitleText,
            ),
          ),
          ),
          Expanded(
              flex: 5,
              child: ReuseableCard(
                kActiveColor,
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(resultText.toUpperCase(),
                    style: kResultText,
                    ),
                    Text(bmiResult,
                    style: kBmiText,
                    ),
                    Text(interpretation,
                    textAlign: TextAlign.center,
                    style: kBmiBody,
                    ),

                  ],
                ),
                  (){},
              ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.only(bottom: 20),
              child: Center(child: Text("RE-CALCULATE", style: kLargButton,)),
              color:kBottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
            ),
          )
        ],
      ),
    );
  }
}
