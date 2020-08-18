import 'package:ahdev/components/background.dart';
import 'package:ahdev/components/logo.dart';
import 'package:ahdev/components/option_card.dart';
import 'package:flutter/material.dart';

class DomainSelect extends StatefulWidget {
  @override
  _DomainSelectState createState() => _DomainSelectState();
}

class _DomainSelectState extends State<DomainSelect> {
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
                'Do you have a domain & host?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 20.0,
                ),
              ),
              OptionCard(
                title: 'Yes I do have my own domain & host',
                route: '/web_design_select',
              ),
              OptionCard(
                title: "No, I need a domain & host",
                route: '/web_design_select',
              ),
            ],
          )),
        ],
      )),
    );
  }
}
