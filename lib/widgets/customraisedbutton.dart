import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
   CustomRaisedButton({
     @required this.onPressed, 
     @required this.text, 
     this.elevation, 
     this.color, 
     this.textColor, 
     this.borderColor, 
     this.borderWidth:0.0
     });

  final double elevation;
  final Function onPressed;
  final String text;
  final Color color;
  final Color textColor;
  final Color borderColor;
  final double borderWidth;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.06,
      child: RaisedButton(
        onPressed: onPressed,
        elevation: elevation,
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 15,
          ),
        ),
        color: color,
        textColor: textColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          side: BorderSide(
            width: borderWidth,
            color: borderColor ?? color,
          ),
        ),
      ),
    );
  }
}