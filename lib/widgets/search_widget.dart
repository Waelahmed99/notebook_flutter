import 'package:flutter/material.dart';
import '../static_values.dart';
import 'package:flutter_svg/svg.dart';

class SearchWidget extends StatelessWidget {
  Widget _buildSeparateLine() => Container(
      width: 1, color: Values.primaryColor, margin: EdgeInsets.all(5));

  Widget _buildSvgIcon() => Container(
      padding: EdgeInsets.all(5),
      child: SvgPicture.asset('assets/search.svg', width: 15));

  Widget _buildText() => Directionality(
        textDirection: TextDirection.rtl,
        child: TextField(
          onSubmitted: (value) {},
          cursorColor: Values.primaryColor,
          maxLines: 1,
          // textDirection: TextDirection.rtl,
          decoration: InputDecoration(
            hintText: 'بحث',
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, top: 10),
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
          Flexible(child: _buildText()),
          _buildSeparateLine(),
          _buildSvgIcon(),
        ],
      ),
    );
  }
}
