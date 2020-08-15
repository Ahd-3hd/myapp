import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Squares extends StatefulWidget {
  Squares({Key key}) : super(key: key);

  @override
  _SquaresState createState() => _SquaresState();
}

class _SquaresState extends State<Squares> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width / 6;
    double _squareOffsetY = 0;
    double _squareOffsetX = 0;
    return Stack(
      children: [
        SingleSquare(
          width: _width,
          image: 'assets/rect_one.svg',
          top: _squareOffsetY,
          left: _squareOffsetX,
        ),
        SingleSquare(
          width: _width / 1.4,
          image: 'assets/rect_one.svg',
          top: _squareOffsetY + _width - _width / 1.2,
          left: _squareOffsetX + _width + (_width / 3),
        ),
        SingleSquare(
          width: _width / 1.5,
          image: 'assets/rect_two.svg',
          top: _squareOffsetY + _width + 10,
          left: _squareOffsetX + _width / 1.2,
        ),
        SingleSquare(
          width: _width / 2,
          image: 'assets/rect_three.svg',
          top: _squareOffsetY + _width * 1.5,
          left: _squareOffsetX + _width / 4,
        ),
        SingleSquare(
          width: _width / 2,
          image: 'assets/rect_three.svg',
          top: _squareOffsetY + _width,
          left: _squareOffsetX + _width * 1.7,
        ),
        SingleSquare(
          width: _width / 2,
          image: 'assets/rect_one.svg',
          top: _squareOffsetY + _width * 1.6,
          left: _squareOffsetX + _width * 1.7,
        ),
        Graph(
          width: _width * 2,
          image: 'assets/graph.png',
          top: _squareOffsetY + _width * 1.6,
          left: _squareOffsetX + _width * 3.5,
        ),
        Rectangle(
          height: 15.0,
          width: MediaQuery.of(context).size.width / 2,
          left: MediaQuery.of(context).size.width / 2,
          top: 10.0,
        ),
        Rectangle(
          height: 15.0,
          width: MediaQuery.of(context).size.width / 2,
          left: 0,
          top: MediaQuery.of(context).size.height / 1.06,
        ),
      ],
    );
  }
}

class SingleSquare extends StatefulWidget {
  final double width;
  final String image;
  final double top;
  final double left;
  SingleSquare(
      {Key key,
      @required this.width,
      @required this.image,
      @required this.top,
      @required this.left})
      : super(key: key);

  @override
  _SingleSquareState createState() => _SingleSquareState();
}

class _SingleSquareState extends State<SingleSquare> {
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 500),
      top: widget.top,
      left: widget.left,
      child: Opacity(
        opacity: 0.5,
        child: SvgPicture.asset(
          widget.image,
          semanticsLabel: null,
          width: widget.width,
        ),
      ),
    );
  }
}

class Graph extends StatefulWidget {
  final double width;
  final String image;
  final double top;
  final double left;
  Graph(
      {Key key,
      @required this.width,
      @required this.image,
      @required this.top,
      @required this.left})
      : super(key: key);

  @override
  _GraphState createState() => _GraphState();
}

class _GraphState extends State<Graph> {
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 500),
      top: widget.top,
      left: widget.left,
      child: Opacity(
        opacity: 0.5,
        child: Image.asset(
          widget.image,
          width: widget.width,
        ),
      ),
    );
  }
}

class Rectangle extends StatefulWidget {
  final double width;
  final double height;
  final double top;
  final double left;
  Rectangle({
    Key key,
    @required this.width,
    @required this.height,
    @required this.top,
    @required this.left,
  }) : super(key: key);

  @override
  _RectangleState createState() => _RectangleState();
}

class _RectangleState extends State<Rectangle> {
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      left: widget.left,
      top: widget.top,
      duration: Duration(milliseconds: 500),
      child: Container(
        width: widget.width,
        height: widget.height,
        child: null,
        decoration: BoxDecoration(
          color: Color.fromRGBO(239, 71, 111, 1),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(239, 71, 111, 0.3),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 0),
            ),
          ],
        ),
      ),
    );
  }
}
