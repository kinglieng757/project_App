import 'package:flutter/material.dart';
import 'package:flutter_application/pages/LoginPage.dart';
import 'package:flutter_application/pages/pages1.dart';
import 'package:flutter_application/pages/pages2.dart';
import 'package:flutter_application/pages/pages3.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Theme/thempate_fonts.dart';
import 'package:flutter_application/pages/selet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo ",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //fontFamily: GoogleFonts.kanit().fontFamily,
        primarySwatch: Colors.red,
      ),
      home: const homepage(),
    );
  }
}

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 216, 42, 42),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 247, 219),
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "App shopping",
              style: TextStyle(
                color: Color.fromARGB(255, 255, 208, 137),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'images/destop.jpg',
              width: 400,
              height: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) {
                    return const Loginpage();
                  }),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.red,
                minimumSize: const Size(200, 40),
              ),
              child: const Text('Login'),
            ),
            
          ],
        ),
      ),
    );
  }
}
