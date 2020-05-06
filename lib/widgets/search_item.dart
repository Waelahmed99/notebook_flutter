import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:notebook/static_values.dart';

class SearchItem extends StatelessWidget {
  final String type;
  final String title;
  final String author;
  final double cost;

  SearchItem({this.type, this.title, this.author, this.cost});

  @override
  Widget build(BuildContext context) {
    String costStr = cost.toString();
    List<String> costs = costStr.split('.');
    if (costs[1] == '0') costStr = costs[0];

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
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.only(left: 10, top: 10),
                child: SvgPicture.asset(
                  'assets/heart.svg',
                  color: Values.primaryColor,
                  width: 22,
                  height: 20,
                ),
              )),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                '$costStr دينار',
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 14, color: Values.primaryColor),
              ),
            ),
          ),
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
        ],
      ),
    );
  }
}
