import 'package:bmi/Extracted_Button.dart';
import 'package:bmi/constants.dart';
import 'package:bmi/reusable_card.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

class ResultScreen extends StatelessWidget {

  ResultScreen({required this.bmiresult,required this.actualbmiresultvalue,required this.interpretation});

  final String bmiresult;
  final String actualbmiresultvalue;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kResultstyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              kolor: kReusablecardcolor,
              cardchild: Column(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(bmiresult,style: KNormaltextstyle,),
                  Text(actualbmiresultvalue,style: KLargetextstyle,),
                  Text('Normal BMI Range:',style: kLabelStyle),
                  Text('18,5 - 25 kg/m2',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,

                  ),),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(interpretation,
                    style: Kinterpretationstyle,
                    textAlign: TextAlign.center,

                  ),
                ],
              ),
            ),
          ),
          BottomButton(buttonName: 'CALCULATE AGAIN',
              onpresssed: Navigator.of(context).pop)
        ],
      ),
    );
  }
}
