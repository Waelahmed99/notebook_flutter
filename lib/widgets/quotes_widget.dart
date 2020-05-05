import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notebook/static_values.dart';

//@requires some improvements.
class QuoteWidget extends StatelessWidget {
  double _height = 300;
  final String content;
  final String writerName;
  final String bookName;

  QuoteWidget({this.content, this.writerName, this.bookName});

  Widget _buildUpperQuote() => Positioned(
      child: SvgPicture.asset('assets/quote_up.svg'), left: 20, top: 15);

  Widget _buildLowerQuote() => Positioned(
      child: SvgPicture.asset('assets/quote_down.svg'), bottom: 15, right: 100);

  Widget _buildBookPicture() => Positioned(
      height: _height,
      child: Center(
        child: Image.asset('assets/book_image.png', width: 100),
      ),
      right: -10);

  Widget _buildBookDetails() => Positioned(
      child: Text('$bookName - $writerName',
          style: TextStyle(color: Colors.white)),
      bottom: 15,
      left: 30);

  Widget _buildBookContent(BuildContext context) => Container(
        width: MediaQuery.of(context).size.width - 130,
        height: _height,
        child: Center(
          child: Text(
            content,
            style: TextStyle(color: Colors.white, fontSize: 13),
            textDirection: TextDirection.rtl,
          ),
        ),
      );

  void configHeight(BuildContext context) {
    _height = content.length * 13 / (MediaQuery.of(context).size.width);
    if (MediaQuery.of(context).orientation == Orientation.portrait)
      _height *= 25;
    else
      _height *= 50;
    _height = max(_height, 170);
  }

  @override
  Widget build(BuildContext context) {
    configHeight(context);
    return Container(
      margin: EdgeInsets.all(15.0),
      height: _height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Values.primaryColor,
      ),
      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          _buildBookContent(context),
          _buildBookDetails(),
          _buildBookPicture(),
          _buildUpperQuote(),
          _buildLowerQuote(),
        ],
      ),
    );
  }
}
