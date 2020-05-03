import 'package:flutter/material.dart';
import '../widgets/centered_title.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[separate(50), CenteredTitle('بحث'), separate(30)],
    );
  }

  Widget separate(double size) => SizedBox(height: size);
}
