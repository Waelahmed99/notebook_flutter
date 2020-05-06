import 'package:flutter/material.dart';
import '../widgets/centered_title.dart';
import '../widgets/books_horizontal_preview.dart';
import '../widgets/quotes_widget.dart';

import '../widgets/books_slider.dart';

class HomePage extends StatelessWidget {
  final String content = 'كيف احتملنا وعشنا وانزلقت شربة الماء من الحلق دون أن نشرق بها ونختنق؟ وما جدوى استحضار ما تحملناه وإعادته بالكلام؟ عند موت من نحب نكفنه، نلفه برحمة ونحفر في الأرض عميقاً..';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SafeArea(child: CenteredTitle('الرئيسية')),
            separate(30),
            SliderList(),
            separate(20),
            HorizontalPreview('الأحدث قراءة'),
            separate(10),
            QuoteWidget(bookName: 'اسم الكتاب', writerName: 'اسم الكاتب', content: content),
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
