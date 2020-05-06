import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../static_values.dart';

class MyBookItem extends StatelessWidget {
  final String type;
  final String author;
  final String title;

  MyBookItem({this.type, this.author, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.white),
      margin: EdgeInsets.only(left: 20, right: 40, bottom: 10),
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(right: 45),
              child: Text(
                title,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.only(right: 45, top: 10),
              child: Text(
                type,
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 14, color: Values.primaryColor),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.only(right: 45, bottom: 10),
              child: Text(
                author,
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 14, color: Color(0xffbcbaba)),
              ),
            ),
          ),
          Positioned(
            child: Image.asset(
              'assets/book_image.png',
              height: 90,
              width: 70,
            ),
            right: -30,
            top: 5,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  color: Values.primaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: EdgeInsets.only(left: 10, bottom: 5),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'اقرأ الكتاب',
                      style: TextStyle(color: Colors.white),
                      textDirection: TextDirection.rtl,
                    ),
                    SvgPicture.asset('assets/read.svg')
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
