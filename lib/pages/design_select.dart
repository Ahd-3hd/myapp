import 'package:ahdev/components/background.dart';
import 'package:ahdev/components/logo.dart';
import 'package:ahdev/components/option_card.dart';
import 'package:flutter/material.dart';

class DesignSelect extends StatefulWidget {
  @override
  _DesignSelectState createState() => _DesignSelectState();
}

class _DesignSelectState extends State<DesignSelect> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Background(),
          Container(
              child: ListView(
            children: [
              Hero(
                tag: "logo_hero",
                child: Logo(
                  shrink: true,
                ),
              ),
              Text(
                'Do you have a design?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 20.0,
                ),
              ),
              OptionCard(
                title: 'Yes I do have my own design',
                route: '/web_design_select',
              ),
              OptionCard(
                title: "No, I need a new design",
                route: '/web_design_select',
              ),
            ],
          )),
        ],
      )),
    );
  }
}
