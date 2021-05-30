import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "loginpage",
      theme: ThemeData(primarySwatch: (Colors.amber)),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/background.jpg"))),
            child: Column(
              children: [
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  "Welcome",
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 150.0,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 50, 0),
                  // width: 300.0,
                  child: TextFormField(
                    decoration: InputDecoration(

                        // border: InputBorder.none,
                        labelText: "Email / Username",
                        labelStyle: TextStyle(color: Colors.amber),
                        // hintText: "Enter user name",
                        icon: Icon(Icons.email_outlined)),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                // Divider(
                //   height: 1.0,
                //   color: Colors.black,
                //   thickness: 1.0,
                // ),
                // SizedBox(
                //   height: 10.0,
                // ),
                Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 50, 0),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          // border: InputBorder.none,
                          labelText: "Password",
                          labelStyle: TextStyle(color: Colors.amber),
                          // hintText: "Enter user name",

                          icon: Icon(Icons.lock_outline)),
                      style: TextStyle(color: Colors.white),
                    )),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: EdgeInsets.only(right: 10.0),
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "Forgot password",
                    style: TextStyle(color: Colors.grey, fontSize: 16.0),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.amber)),
                    onPressed: () {},
                    child: Center(
                      child:
                          Text("Login", style: TextStyle(color: Colors.white)),
                    ),
                    // ),

                    // SizedBox(
                    //   height: 90.0,
                  ),
                ),

                Container(
                  padding: EdgeInsets.symmetric(vertical: 80.0),
                  // alignment: Alignment.bottomCenter,
                  child: Text(
                    "don't have account?  SIGN UP",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
