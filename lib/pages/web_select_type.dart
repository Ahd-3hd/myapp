import 'package:ahdev/components/background.dart';
import 'package:ahdev/components/logo.dart';
import 'package:ahdev/components/option_card.dart';
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
                'Select Type:',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 20.0,
                ),
              ),
              OptionCard(
                title: 'BLOG OR MAGAZINE',
                descr:
                    'Websites that feature regularly updated Articles,  Photos and videos that are informational and educational.',
                route: '/web_design_select',
              ),
              OptionCard(
                title: 'e-COMMERCE',
                descr:
                    'An e-commerce website is an online shopping destination where users can purchase products or services from your company.',
                route: '/web_design_select',
              ),
              OptionCard(
                title: 'PERSONAL OR PORTFOLIO',
                descr:
                    'Showcase your talent or your work or simply share your life with others.',
                route: '/web_design_select',
              ),
              OptionCard(
                title: 'Landing Page',
                descr:
                    'A web page that is specific for marketing campaigns that drives visitors to take a specific action and generate customers.',
                route: '/web_design_select',
              ),
              OptionCard(
                title: 'SOCIALMEDIA OR FORUMS',
                descr:
                    'Similar to Facebook, Twitter and other platforms, These types of websites are created as a platform for people to communicate. ',
                route: '/web_design_select',
              ),
            ],
          )),
        ],
      )),
    );
  }
}
