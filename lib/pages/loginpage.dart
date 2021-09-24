// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, duplicate_ignore

import 'package:dscp/config/routs.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: SizedBox(
                  child: Image(
                image: AssetImage("lib/assets/images/login.png"),
                fit: BoxFit.cover,
              )),
            ),
            Text(
              "Welcome $name",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "Enter email here",
                      contentPadding: EdgeInsets.all(10),
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter Password here",
                      contentPadding: EdgeInsets.all(10),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRout);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton ? 50 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: changeButton
                          ? Icon(Icons.done)
                          : Text(
                              "login",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                      decoration: BoxDecoration(
                          //this line for animation
                          //or you can use below, but only one
                          // shape: changeButton?BoxShape.circle:BoxShape.rectangle,
                          color: Colors.deepPurple,
                          borderRadius:
                              BorderRadius.circular(changeButton ? 50 : 8)),
                    ),
                  ),

                  // ElevatedButton(
                  //     onPressed: () {
                  //       Navigator.pushNamed(context, MyRoutes.homeRout);
                  //     },
                  //     child: Text("Sign In"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
