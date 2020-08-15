import 'package:flutter/material.dart';

class Slogan extends StatelessWidget {
  const Slogan({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Get Your App & Website with a  \ntouch of a button',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          height: 1.5,
          color: Color(0xff073B4C),
        ),
      ),
    );
  }
}
