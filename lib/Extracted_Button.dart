import 'input_page.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'result_page.dart';


class BottomButton extends StatelessWidget {
 final String buttonName;
 final VoidCallback onpresssed;

 BottomButton({required this.buttonName,required this.onpresssed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpresssed,
      child: Container(
        child: Center(
          child: Text(buttonName, style: kBottomcontainertextstyle),
        ),
        padding: EdgeInsets.only(bottom: 10.0),
        margin: EdgeInsets.only(top: 10.0),
        color: kBottomcontainercolor,
        width: double.infinity,
        height: kBottomcontainerheight,
      ),
    );
  }
}


class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onpressed});
  final IconData icon;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onpressed,
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}
