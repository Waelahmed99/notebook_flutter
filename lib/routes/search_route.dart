import 'package:flutter/material.dart';
import '../widgets/centered_title.dart';
import '../widgets/search_widget.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6be7e6e7),
      body: Column(
        children: <Widget>[
          SafeArea(child: CenteredTitle('بحث', backgroundColor: Colors.white)),
          separate(10),
          SearchWidget(),
        ],
      ),
    );
  }

  Widget separate(double size) => SizedBox(height: size);
}
