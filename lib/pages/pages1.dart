import 'package:flutter/material.dart';
import 'package:flutter_application/Theme/thempate_fonts.dart';
import 'package:flutter_application/main.dart';
import 'package:flutter_application/pages/pages2.dart';
import 'package:flutter_application/pages/pages3.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Pages1State();
}

class _Pages1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            fontsdemo(
              title: "Check In ",
              size: 18.0,
            ),
            NavStart(),
            SizedBox(
              height: 20.0,
            ),
            fontsdemo(
              title: "Revenue",
              size: 18,
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.white,
              child: Column(
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        fontsdemo(
                          title: "PAID TO YOU",
                          size: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                fontsdemo(
                                  title: "THIS MONTH",
                                  size: 13,
                                  color: Colors.grey.shade600,
                                ),
                                fontsdemo(
                                  title: "\$15,000",
                                  size: 24,
                                ),
                                fontsdemo(
                                  title: "\$13K LAST MONTH",
                                  size: 13,
                                  color: Colors.greenAccent.shade400,
                                ),
                              ],
                            ),
                            Container(
                              color: Colors.grey.shade100,
                              height: 200,
                              width: 2,
                            ),
                            Column(
                              children: [
                                fontsdemo(
                                  title: "THIS MONTH",
                                  size: 13,
                                  color: Colors.grey.shade600,
                                ),
                                fontsdemo(
                                  title: "\$15,000",
                                  size: 24,
                                ),
                                fontsdemo(
                                  title: "\$13K LAST MONTH",
                                  size: 13,
                                  color: Colors.greenAccent,
                                ),
                              ],
                            )
                          ],
                        ),
                        Container(
                          color: Colors.grey.shade100,
                          width: double.infinity,
                          height: 2,
                        ),
                      ]),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        fontsdemo(
                          title: "PAID TO YOU",
                          size: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                fontsdemo(
                                  title: "THIS MONTH",
                                  size: 13,
                                  color: Colors.grey.shade600,
                                ),
                                fontsdemo(
                                  title: "\$15,000",
                                  size: 24,
                                ),
                                fontsdemo(
                                  title: "\$13K LAST MONTH",
                                  size: 13,
                                  color: Colors.greenAccent,
                                ),
                              ],
                            ),
                            Container(
                              color: Colors.grey.shade100,
                              height: 200,
                              width: 2,
                            ),
                            Column(
                              children: [
                                fontsdemo(
                                  title: "THIS MONTH",
                                  size: 13,
                                  color: Colors.grey.shade600,
                                ),
                                fontsdemo(
                                  title: "\$15,000",
                                  size: 24,
                                ),
                                fontsdemo(
                                  title: "\$13K LAST MONTH",
                                  size: 13,
                                  color: Colors.greenAccent,
                                ),
                              ],
                            )
                          ],
                        ),
                        Container(
                          color: Colors.grey.shade100,
                          width: double.infinity,
                          height: 2,
                        ),
                      ]),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        fontsdemo(
                          title: "PAID TO YOU",
                          size: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                fontsdemo(
                                  title: "THIS MONTH",
                                  size: 13,
                                  color: Colors.grey.shade600,
                                ),
                                fontsdemo(
                                  title: "\$15,000",
                                  size: 24,
                                ),
                                fontsdemo(
                                  title: "\$13K LAST MONTH",
                                  size: 13,
                                  color: Colors.greenAccent,
                                ),
                              ],
                            ),
                            Container(
                              color: Colors.grey.shade100,
                              height: 200,
                              width: 2,
                            ),
                            Column(
                              children: [
                                fontsdemo(
                                  title: "THIS MONTH",
                                  size: 13,
                                  color: Colors.grey.shade600,
                                ),
                                fontsdemo(
                                  title: "\$15,000",
                                  size: 24,
                                ),
                                fontsdemo(
                                  title: "\$13K LAST MONTH",
                                  size: 13,
                                  color: Colors.greenAccent,
                                ),
                              ],
                            )
                          ],
                        ),
                        Container(
                          color: Colors.grey.shade100,
                          width: double.infinity,
                          height: 2,
                        ),
                      ]),
                ],
              ),
            )
          ],
        ),
      )),
    ));
  }
}

class NavStart extends StatelessWidget {
  const NavStart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.greenAccent,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.blue.shade900),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.blueAccent,
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Column(
                children: [
                  fontsdemo(
                    title: "09:45",
                    size: 16,
                    color: Colors.white,
                  ),
                  fontsdemo(
                    title: "Join",
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: fontsdemo(
                  title: "Resume consultation",
                  size: 16,
                  color: Colors.black,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.history,
                    color: Colors.grey.shade700,
                  ),
                  fontsdemo(
                    title: "30 min",
                    size: 13,
                    color: Colors.grey.shade700,
                  ),
                  Icon(
                    Icons.person,
                    color: Colors.grey.shade700,
                  ),
                  fontsdemo(
                    title: "Anucha chanwiang",
                    size: 13,
                    color: Colors.grey.shade700,
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            width: 50,
          ),
          Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}
