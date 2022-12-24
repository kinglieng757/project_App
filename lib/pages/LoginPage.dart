import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application/pages/Register.dart';
import 'package:flutter_application/pages/pages1.dart';
import 'package:flutter_application/pages/selet.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String? username;
  String? password;
  var _isObscured;
  final _formkey = GlobalKey<FormState>();

  final UsernameFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _isObscured = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 246, 255),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Form(
                  key: _formkey,
                  child: Column(children: [
                    const Icon(
                      Icons.android,
                      size: 100,
                      color: Colors.black,
                    ),
                    const SizedBox(height: 50),
                    const Text(
                      'Login  ID',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 25),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  width: 1),
                              borderRadius: BorderRadius.circular(25.0)),
                          fillColor: Color.fromARGB(255, 255, 255, 255),
                          filled: true,
                          prefixIcon: IconButton(
                            icon: Icon(Icons.people_alt),
                            onPressed: () {
                              BorderRadius.circular(25.0);
                            },
                          ),
                          labelText: 'Username',
                        ),
                        validator: ((value) {
                          if (value!.isEmpty) {
                            return 'Please enter a username';
                          }
                          if (value.length < 6) {
                            UsernameFocusNode.requestFocus();
                            return 'Username must be at least 6 characters';
                          }
                        }),
                        onSaved: (value) => username = value,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextFormField(
                        obscureText: _isObscured,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 255, 255, 255),
                                width: 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25.0)),
                          ),
                          fillColor: Color.fromARGB(255, 255, 255, 255),
                          filled: true,
                          prefixIcon: IconButton(
                            icon: Icon(Icons.lock),
                            onPressed: () {},
                          ),
                          suffixIcon: IconButton(
                            icon: _isObscured
                                ? Icon(Icons.visibility)
                                : const Icon(Icons.visibility_off),
                            onPressed: () {
                              borderRadius:
                              BorderRadius.circular(25.0);
                              setState(() {
                                _isObscured = !_isObscured;
                              });
                            },
                          ),
                          labelText: 'Password',
                        ),

                        validator: ((value) {
                          if (value!.isEmpty) {
                            return 'Please enter a Password';
                          }
                          if (value.length < 6) {
                            passwordFocusNode.requestFocus();
                            return 'Password must be at least 6 characters';
                          }
                        }),
                        onSaved: (value) => password = value,
                        //obscureText = true,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formkey.currentState!.validate()) {
                              _formkey.currentState!.save();
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return const Setet();
                                }),
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35.0)),
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            minimumSize: const Size(250, 50),
                          ),
                          child: const Text(
                            "Sign In",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                            return const register();
                          }),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35.0)),
                        backgroundColor: Color.fromARGB(255, 94, 82, 255),
                        foregroundColor: Colors.white,
                        minimumSize: const Size(250, 50),
                      ),
                      child: const Text(
                        'Register',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
