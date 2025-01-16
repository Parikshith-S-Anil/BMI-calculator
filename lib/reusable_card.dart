import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color kolor;
  final Widget cardchild;
  ReusableCard({required this.kolor,required this.cardchild});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: cardchild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: kolor,
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}
