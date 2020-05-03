import 'package:flutter/material.dart';
import '../centered_title.dart';
import '../widgets/books_horizontal_preview.dart';
import '../widgets/quotes_widget.dart';

import '../widgets/books_slider.dart';

class HomePage extends StatelessWidget {
  final List colors = [
    Colors.red,
    Colors.black,
    Colors.blue,
    Colors.yellow,
    Colors.grey,
    Colors.green
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            separate(50),
            SafeArea(child: CenteredTitle('الرئيسية')),
            separate(30),
            SliderList(),
            separate(20),
            HorizontalPreview('الأحدث قراءة'),
            separate(10),
            QuoteWidget(),
            separate(10),
            HorizontalPreview('الأكثر مبيعاً'),
            separate(10)
          ],
        ),
      ),
    );
  }

  Widget separate(double size) => SizedBox(height: size);
}
