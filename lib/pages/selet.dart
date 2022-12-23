import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application/main.dart';
import 'package:flutter_application/pages/pages1.dart';
import 'package:flutter_application/pages/pages2.dart';
import 'package:flutter_application/pages/pages3.dart';
import 'package:flutter_application/main.dart';

class Setet extends StatefulWidget {
  const Setet({super.key});

  @override
  State<Setet> createState() => _SetetState();
}

class _SetetState extends State<Setet> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    Page1(),
    Pages2(),
    Pages3(),
    homepage(),
  ];
  final List<String> _pageNames = [
    'Home',
    'Dashboard',
    'Settings',
    'Logout',
  ];
  final Listicon = [
    (Icons.home),
    (Icons.safety_check),
    (Icons.cached),
    (Icons.lock_open),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pageNames[_currentIndex]),
      ),
      body: _pages[_currentIndex],
      drawer: Drawer(
        child: Theme(
          data: Theme.of(context).copyWith(
            primaryColor: Colors.blueAccent,
            textTheme: Theme.of(context).textTheme.copyWith(
                  bodyText1: TextStyle(color: Colors.blue),
                ),
            highlightColor: Color.fromARGB(255, 255, 227, 185),
          ),
          child: ListView.builder(
            itemCount: _pageNames.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(
                  Listicon[index],
                  color: Color.fromARGB(255, 255, 145, 0),
                ),
                title: Text(
                  _pageNames[index],
                  style: TextStyle(color: Color.fromARGB(255, 255, 145, 0)),
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                onTap: () {
                  setState(() {
                    _currentIndex = index;
                  });
                  Navigator.pop(context);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
