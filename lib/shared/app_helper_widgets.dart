import 'package:adahi_application/shared/app_styles.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final double radius = 30.0;
  final Function function;
  final String text;
  final bool toUpper = true;
  final double elevation;

  const DefaultButton({this.function, this.text, this.elevation});

  @override
  Widget build(BuildContext context) => Container(
        width: double.infinity,
        height: 50.0,
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFF26A69A),
            width: 1,
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            radius,
          ),
        ),
        child: TextButton(
          onPressed: function,
          child: Text(
            toUpper ? text.toUpperCase() : text,
            style: green16(),
          ),
          //black16Bold(),
        ),
      );
}

class CaptionText extends StatelessWidget {
  final text;
  const CaptionText({this.text});

  @override
  Widget build(BuildContext context) => Text(
        text,
        style: green18Bold(),
      );
}
