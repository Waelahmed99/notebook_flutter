import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderList extends StatelessWidget {
  final List<Widget> items = [
    Container(
      color: Colors.red,
      width: 150,
      height: 250,
    ),
    Container(
      color: Colors.green,
      width: 150,
      height: 250,
    ),
    Container(
      color: Colors.blue,
      width: 150,
      height: 250,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: items,
      height: 250,
      viewportFraction: 0.45,
      initialPage: 0,
      reverse: true,
      enableInfiniteScroll: true,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 3),
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
      pauseAutoPlayOnTouch: Duration(seconds: 10),
      enlargeCenterPage: true,
      scrollDirection: Axis.horizontal,
    );
  }
}
