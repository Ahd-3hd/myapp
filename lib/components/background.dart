import 'package:flutter/material.dart';
import 'package:ahdev/components/squares.dart';

class Background extends StatelessWidget {
  const Background({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Squares(),
    );
  }
}
