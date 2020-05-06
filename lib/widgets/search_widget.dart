import 'package:flutter/material.dart';
import '../static_values.dart';
import 'package:flutter_svg/svg.dart';

class SearchWidget extends StatelessWidget {
  Widget _buildSeparateLine() => Container(
      width: 1, color: Values.primaryColor, margin: EdgeInsets.all(5));

  Widget _buildSvgIcon() => Container(
      padding: EdgeInsets.all(5),
      child: SvgPicture.asset('assets/search.svg', width: 15));

  Widget _buildText() => Text('سيرة', style: TextStyle(fontSize: 16));

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          _buildText(),
          _buildSeparateLine(),
          _buildSvgIcon(),
        ],
      ),
    );
  }
}
