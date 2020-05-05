import 'package:flutter/material.dart';

class MoreBooksPage extends StatelessWidget {
  final String title;
  MoreBooksPage(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(child: Text('More list')),
    );
  }
}
