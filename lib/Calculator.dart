

import 'dart:math';

class calculator
{
  calculator({required this.height,required this.weight});
  final int height;
  final int weight;

 late double bmi;

  String calculatebmi(){
    bmi = weight/pow(height/100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getresult(){
    if(bmi >= 25){
      return 'OVER WEIGHT';
    }else if(bmi >= 18.5){
      return 'NORMAL';
    }
    else {
      return 'UNDER WEIGHT';
    }
  }

  String getInterpretation(){
    if(bmi >= 25){
      return 'you have a higher body weight than other,you can do more excercise';
    }else if(bmi >= 18.5){
      return 'you have a normal body weight,Great job';
    }
    else {
      return 'you have a lower body weight than others,you can eat more';
    }
  }
  }
