import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {

  final Function onPress;
  final String buttonText;

  BottomButton({@required this.buttonText,@required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(
            buttonText,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kContainerHeight,
        padding: EdgeInsets.only(bottom: 20.0),
      ),
    );
  }
}