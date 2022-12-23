import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Pages3 extends StatefulWidget {
  const Pages3({super.key});

  @override
  State<Pages3> createState() => _Pages3State();
}

class _Pages3State extends State<Pages3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Text("Pages3"),
      ),
    );
  }
}
