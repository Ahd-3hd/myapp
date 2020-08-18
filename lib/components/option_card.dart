import 'package:flutter/material.dart';

class OptionCard extends StatelessWidget {
  final String title;
  final String descr;
  final String route;
  const OptionCard(
      {Key key, @required this.title, this.descr, @required this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 10,
      ),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, this.route);
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
                  height: this.descr != null ? 20 : null,
                ),
                this.descr != null
                    ? Text(
                        this.descr,
                        style: TextStyle(
                          color: Color(0xff073B4C),
                          fontWeight: FontWeight.w600,
                          fontSize: 13.0,
                        ),
                      )
                    : SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
