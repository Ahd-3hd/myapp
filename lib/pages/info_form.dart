import 'package:ahdev/components/background.dart';
import 'package:ahdev/components/logo.dart';
import 'package:ahdev/components/option_card.dart';
import 'package:flutter/material.dart';

class InfoForm extends StatefulWidget {
  @override
  _InfoFormState createState() => _InfoFormState();
}

class _InfoFormState extends State<InfoForm> {
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
            ],
          )),
        ],
      )),
    );
  }
}
