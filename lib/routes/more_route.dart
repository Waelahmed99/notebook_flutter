import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notebook/static_values.dart';

class MorePage extends StatelessWidget {
  Widget _buildBackground(BuildContext context) => SafeArea(
      child: SvgPicture.asset('assets/profile_background.svg',
          width: MediaQuery.of(context).size.width));

  Widget _buildRowButton(String title, String svg) => Padding(
        padding: const EdgeInsets.only(right: 10, top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            SizedBox(width: 30),
            SvgPicture.asset(svg, width: 20),
          ],
        ),
      );

  Widget _buildFavouriteButton() => FlatButton(
      splashColor: Values.accentColor,
      highlightColor: Values.accentColor,
      onPressed: () {},
      child: _buildRowButton('مفضلتي', 'assets/heart.svg'));

  Widget _buildContactButton() => FlatButton(
      splashColor: Values.accentColor,
      highlightColor: Values.accentColor,
      onPressed: () {},
      child: _buildRowButton('تواصل معنا', 'assets/chat.svg'));

  Widget _buildTermsButton() => FlatButton(
      splashColor: Values.accentColor,
      highlightColor: Values.accentColor,
      onPressed: () {},
      child: _buildRowButton('الشروط والأحكام', 'assets/terms.svg'));

  Widget _buildRateButton() => FlatButton(
      splashColor: Values.accentColor,
      highlightColor: Values.accentColor,
      onPressed: () {},
      child: _buildRowButton('قيم التطبيق', 'assets/star.svg'));

  Widget _buildShareButton() => FlatButton(
      splashColor: Values.accentColor,
      highlightColor: Values.accentColor,
      onPressed: () {},
      child: _buildRowButton('شارك التطبيق', 'assets/share.svg'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _buildBackground(context),
          SizedBox(height: 10),
          _buildFavouriteButton(),
          _buildContactButton(),
          _buildTermsButton(),
          _buildRateButton(),
          _buildShareButton()
        ],
      ),
    ));
  }
}
