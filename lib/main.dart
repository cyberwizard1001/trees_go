// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:trees_go/LoginPage.dart';
import 'package:trees_go/signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cool app name',
      home: MyHomePage(),
        );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffF3EAC2),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40.0,bottom: 40.0),
                child: SizedBox(
                  child: Text('Cool app name',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: Color(0xffEC524B),
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(50.0),
                  child:Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(
                          color: Colors.white,
                          width: 8,
                        )
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        'This app lets you adopt vaccinated ex-stray dogs legally. You can also donate for the maintenance and well being of the dog of your choice. Came across a stray dog in your locality? Snap a picture and let us know!',
                        style: TextStyle(fontSize: 20,color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
              ),
              SizedBox(
                  height: 20
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0)
                        ),
                        primary: Color(0xffEC524B),
                        padding: EdgeInsets.all(15),
                        onPrimary: Color(0xffF3EAC2),
                        elevation:5,
                      ),
                      label: Text('Login'),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));
                        },
                      icon: Icon(Icons.arrow_forward),
                    ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.1,
                  ),
                  ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)
                        ),
                        primary: Color(0xffEC524B),
                      padding: EdgeInsets.all(15),
                      onPrimary: Color(0xffF3EAC2),
                      elevation:5,
                      ),
                      label: Text('Signup'),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Signup()));
                      },
                      icon: Icon(Icons.assignment_turned_in),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}