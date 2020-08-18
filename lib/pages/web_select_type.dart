import 'package:ahdev/components/logo.dart';
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
            ),
            OptionCard(
              title: 'e-COMMERCE',
              descr:
                  'An e-commerce website is an online shopping destination where users can purchase products or services from your company.',
            ),
            OptionCard(
              title: 'PERSONAL OR PORTFOLIO',
              descr:
                  'Showcase your talent or your work or simply share your life with others.',
            ),
            OptionCard(
              title: 'Landing Page',
              descr:
                  'A web page that is specific for marketing campaigns that drives visitors to take a specific action and generate customers.',
            ),
            OptionCard(
              title: 'SOCIALMEDIA OR FORUMS',
              descr:
                  'Similar to Facebook, Twitter and other platforms, These types of websites are created as a platform for people to communicate. ',
            ),
          ],
        )),
      ),
    );
  }
}

class OptionCard extends StatelessWidget {
  final String title;
  final String descr;
  const OptionCard({
    Key key,
    @required this.title,
    @required this.descr,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 10,
      ),
      child: InkWell(
        onTap: () {
          print('sdf');
        },
        child: Card(
          child: Container(
            padding: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.title,
                  style: TextStyle(
                    color: Color(0xffEF476F),
                    fontWeight: FontWeight.w800,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  this.descr,
                  style: TextStyle(
                    color: Color(0xff073B4C),
                    fontWeight: FontWeight.w600,
                    fontSize: 13.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
