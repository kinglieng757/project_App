import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
      appBar: AppBar(
        title: Text("Login"),
      ),
      backgroundColor: Color.fromARGB(255, 221, 221, 221),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Form(
                  key: _formkey,
                  child: Column(children: [
                    Icon(
                      Icons.people,
                      size: 50,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12),
                          ),
                          fillColor: Color.fromARGB(255, 255, 255, 255),
                          filled: true,
                          labelText: 'Username',
                          icon: Icon(Icons.people_alt),
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
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextFormField(
                        obscureText: _isObscured,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12),
                          ),
                          fillColor: Color.fromARGB(255, 255, 255, 255),
                          filled: true,
                          suffixIcon: IconButton(
                            icon: _isObscured
                                ? Icon(Icons.visibility)
                                : const Icon(Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                _isObscured = !_isObscured;
                              });
                            },
                          ),
                          labelText: 'Password',
                          icon: const Icon(Icons.lock),
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
                    Padding(
                      padding: const EdgeInsets.all(25.0),
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
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          minimumSize: const Size(200, 40),
                        ),
                        child: const Text("Sign In"),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        foregroundColor: Colors.white,
                        minimumSize: const Size(200, 40),
                      ),
                      child: const Text('Register'),
                    )
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
