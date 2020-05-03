import 'package:flutter/material.dart';

class CenteredTitle extends StatelessWidget {
  final String title;
  CenteredTitle(this.title);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(title,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
    );
  }
}
