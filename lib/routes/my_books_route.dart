import 'package:flutter/material.dart';
import '../widgets/centered_title.dart';
import '../widgets/my_book_item.dart';

class MyBooksPage extends StatelessWidget {
  final List<MyBookItem> _items = [
    MyBookItem(
      author: 'بهاء طاهر',
      title: 'السيرة في المنفي',
      type: 'ثقافة عامة',
    ),
    MyBookItem(
      author: 'أحمد خالد توفيق',
      title: 'يوتوبيا',
      type: 'الأدب العربي',
    ),
    MyBookItem(
      author: 'يوسف زيدان',
      title: 'شجون مصرية',
      type: 'الأدب العربي',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6be7e6e7),
      body: Column(
        children: <Widget>[
          SafeArea(child: CenteredTitle('كتبي', backgroundColor: Colors.white)),
          separate(10),
          Expanded(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int idx) {
                return _items[idx];
              },
              itemCount: _items.length,
            ),
          )
        ],
      ),
    );
  }

  Widget separate(double size) => SizedBox(height: size);
}
