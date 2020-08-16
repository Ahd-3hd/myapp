import 'package:ahdev/components/button.dart';
import 'package:ahdev/components/logo.dart';
import 'package:ahdev/components/slogan.dart';
import 'package:ahdev/components/social_accounts.dart';
import 'package:flutter/material.dart';
import 'package:ahdev/components/squares.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Stack(
            children: [
              Squares(),
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Slogan(),
                    Hero(
                      tag: "logo_hero",
                      child: Logo(),
                    ),
                    Container(
                      margin: EdgeInsets.all(20.0),
                      child: Text(
                        'I need a: ',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    Button(
                      text: 'Website',
                      color: Color(0xffEF476F),
                      passedIcon: Icon(
                        Icons.desktop_mac,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    Button(
                      text: 'Mobile App',
                      color: Color(0xffEF476F),
                      passedIcon: Icon(
                        Icons.phone_iphone,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ),
              SocialAccounts()
            ],
          ),
        ),
      ),
    );
  }
}
