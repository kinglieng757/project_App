import 'package:flutter/material.dart';

class fontsdemo extends StatelessWidget {
  Color? color;
  String? title;
  double? size;
  fontsdemo({super.key, this.size, this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      title.toString(),
      style: TextStyle(fontSize: size, color: color),
    );
  }
}
