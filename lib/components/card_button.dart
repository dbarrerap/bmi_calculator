import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/constants.dart';

class CardButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  const CardButton({Key? key, required this.onTap, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Text(text, style: kBodyTextStyle,),
        margin: const EdgeInsets.all(15.0),
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: kBorderCardColor,
            width: 0.2,
          ),
          color: kActiveCardColor,
        ),
      ),
    );
  }
}
