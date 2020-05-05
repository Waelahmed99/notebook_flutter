import 'package:flutter/material.dart';
import 'package:notebook/routes/home_route.dart';
import 'package:notebook/routes/more_route.dart';
import 'package:notebook/routes/search_route.dart';
import 'package:notebook/static_values.dart';
import 'widgets/rtl_bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  int _currentIdx = 0;

  List<RTLbottomItem> _items = [
    RTLbottomItem(title: 'الرئيسية', icon: 'assets/home.svg'),
    RTLbottomItem(title: 'بحث', icon: 'assets/search.svg'),
    RTLbottomItem(title: 'كتبي', icon: 'assets/book.svg'),
    RTLbottomItem(title: 'المزيد', icon: 'assets/more.svg')
  ];

  List<Widget> _routes = [
    HomePage(),
    SearchPage(),
    Center(child: Text('كتبي')),
    MorePage()
  ];

  Widget _buildRTLBottomBar() {
    return RTLBottomBar(
      currentIndex: _currentIdx,
      onTap: (int idx) => controller.animateToPage(idx,
          duration: Duration(milliseconds: 800), curve: Curves.ease),
      backgroundColor: Colors.white,
      items: _items,
      textColor: Values.primaryColor,
      selectedItemColor: Values.primaryColor,
      accentColor: Values.accentColor,
    );
  }

  final controller = PageController(
    initialPage: 0,
  );
  Widget _buildPageView() => PageView(
        children: _routes,
        controller: controller,
        reverse: true,
        onPageChanged: (idx) {
          setState(() {
            _currentIdx = idx;
          });
        },
      );

  ThemeData appTheme() => ThemeData(
      fontFamily: 'Gulf',
      accentColor: Values.accentColor,
      primaryColor: Values.primaryColor);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme(),
      home: Scaffold(
        body: _buildPageView(),
        bottomNavigationBar: _buildRTLBottomBar(),
      ),
    );
  }
}
