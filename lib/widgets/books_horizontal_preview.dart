import 'package:flutter/material.dart';
import 'package:notebook/static_values.dart';

class HorizontalPreview extends StatelessWidget {
  final String title;
  HorizontalPreview(this.title);

  Widget _buildMoreButton() => Container(
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Values.accentColor,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 6, right: 6, top: 2, bottom: 2),
          child: Text(
            'المزيد',
            style: TextStyle(color: Values.primaryColor),
          ),
        ),
      );

  Widget _buildTitleText() => Container(
        margin: const EdgeInsets.all(8.0),
        child: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      );

  Widget _buildInfoRow() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _buildMoreButton(),
          _buildTitleText(),
        ],
      );

  Widget _buildItemsList() => ListView.builder(
        scrollDirection: Axis.horizontal,
        reverse: true,
        itemBuilder: (context, idx) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 100,
            color: Colors.green[(idx + 1) * 100],
          ),
        ),
        itemCount: 6,
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _buildInfoRow(),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          child: _buildItemsList(),
        ),
      ],
    );
  }

  Widget separate(double size) => SizedBox(height: size);
}
