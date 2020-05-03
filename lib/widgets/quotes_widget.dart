import 'package:flutter/material.dart';

class QuoteWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xfff95563)
        ),
        child: Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            Positioned(child: Text('المقولة بتاعة الكتاب'), top: 90, right: 90, ),
            Positioned(child: Text('اسم الكاتب - اسم الكتاب'), bottom: 30, left: 30,),
            Positioned(child: Text('صورة الكتاب'), top: 90, right: -10,),
            Positioned(child: Text('فوق'), left: 50, top: 30,),
            Positioned(child: Text('تحت'), bottom: 30, right: 50,),
            
          ],
        ),
      ),
    );
  }
}