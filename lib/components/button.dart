import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Color color;
  final Icon passedIcon;
  final String text;
  const Button(
      {Key key,
      @required this.color,
      @required this.passedIcon,
      @required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0),
      child: RaisedButton(
        color: Color(0xffEF476F),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              passedIcon,
              SizedBox(
                width: 10,
              ),
              Text(
                this.text,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
