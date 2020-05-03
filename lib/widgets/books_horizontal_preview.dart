import 'package:flutter/material.dart';

class HorizontalPreview extends StatelessWidget {
  final List colors = [
    Colors.red,
    Colors.black,
    Colors.blue,
    Colors.yellow,
    Colors.grey,
    Colors.green
  ];
  String title;
  HorizontalPreview(this.title);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xfffee9eb)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 4, right: 4, top: 2, bottom: 2),
                    child: Text(
                      'المزيد',
                      style: TextStyle(color: Color(0xfff95563)),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            )
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            reverse: true,
            children: colors
                .asMap()
                .map((idx, color) => MapEntry(
                      idx,
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 100,
                          color: Colors.green[(idx + 1) * 100],
                        ),
                      ),
                    ))
                .values
                .toList(),
          ),
        ),
      ],
    );
  }

  Widget separate(double size) => SizedBox(height: size);
}
