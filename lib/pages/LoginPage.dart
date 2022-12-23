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
                    Icon(Icons.people),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
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
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: TextFormField(
                        obscureText: _isObscured,
                        decoration: InputDecoration(
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
                    ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          _formkey.currentState!.save();
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                              return const Setet();
                            }),
                          );
                        }
                      },
                      child: const Text("Login"),
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
