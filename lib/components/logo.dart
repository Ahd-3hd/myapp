import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final bool shrink;
  const Logo({Key key, this.shrink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return shrink
        ? Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 70, horizontal: 50),
              width: 100.0,
              height: 15.0,
              color: Color(0xff06D6A0),
              child: OverflowBox(
                minWidth: 100.0,
                maxWidth: 150.0,
                minHeight: 150.0,
                maxHeight: 150.0,
                child: Image.asset(
                  'assets/logo.png',
                  width: 200,
                ),
              ),
            ),
          )
        : Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
            width: 180.0,
            height: 45.0,
            color: Color(0xff06D6A0),
            child: OverflowBox(
              minWidth: 250.0,
              maxWidth: 250.0,
              minHeight: 150.0,
              maxHeight: 150.0,
              child: Image.asset(
                'assets/logo.png',
                width: this.shrink ? 50 : 200,
              ),
            ),
          );
  }
}
