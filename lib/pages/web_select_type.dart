import 'package:ahdev/components/logo.dart';
import 'package:ahdev/components/squares.dart';
import 'package:flutter/material.dart';

class WebSelectType extends StatefulWidget {
  WebSelectType({Key key}) : super(key: key);

  @override
  _WebSelectTypeState createState() => _WebSelectTypeState();
}

class _WebSelectTypeState extends State<WebSelectType> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Stack(
            children: [
              Squares(),
              Column(
                children: [
                  Hero(
                    tag: "logo_hero",
                    child: Logo(shrink: true),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        Text('sdfsf'),
                        Text('sdfsf'),
                        Text('sdfsf'),
                        Text('sdfsf'),
                        Text('sdfsf'),
                        Text('sdfsf'),
                        Text('sdfsf'),
                        Text('sdfsf'),
                        Text('sdfsf'),
                        Text('sdfsf'),
                        Text('sdfsf'),
                        Text('sdfsf'),
                        Text('sdfsf'),
                        Text('sdfsf'),
                        Text('sdfsf'),
                        Text('sdfsf'),
                        Text('sdfsf'),
                        Text('sdfsf'),
                        Text('sdfsf'),
                        Text('sdfsf'),
                        Text('sdfsf'),
                        Text('sdfsf'),
                        Text('sdfsf'),
                        Text('sdfsf'),
                        Text('sdfsf'),
                        Text('sdfsf'),
                        Text('sdfsf'),
                        Text('sdfsf'),
                        Text('sdfsf'),
                        Text('sdfsf'),
                        Text('sdfsf'),
                        Text('sdfsf'),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
