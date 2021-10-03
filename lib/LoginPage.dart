import 'package:flutter/material.dart';
import 'package:trees_go/signup.dart';

import 'Choice.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/furry_friends.png'),
                  )),
            ),
            Container(
              child: SafeArea(
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: ListView(
                      children: <Widget>[
                        SizedBox(
                          height: 200,
                        ),
                        Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffEC524B),
                              ),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: TextField(
                            cursorColor: Color(0xffEC524B),
                            controller: nameController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(20)),
                                borderSide: const BorderSide(
                                    color: Color(0xffEC524B), width: 2.0),
                              ),
                              labelText: 'Username',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: TextField(
                            cursorColor: Color(0xffEC524B),
                            obscureText: true,
                            controller: passwordController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(20)),
                                borderSide: const BorderSide(
                                    color: Color(0xffEC524B), width: 2.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(20)),
                                borderSide: const BorderSide(
                                    color: Color(0xffEC524B), width: 2.0),
                              ),
                              labelText: 'Password',
                            ),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            //forgot password screen
                          },
                          textColor: Color(0xffF3EAC2),
                          child: Text(
                            'Forgot Password',
                            style: TextStyle(
                              color: Color(0xffC0791E),
                            ),
                          ),
                        ),
                        Container(
                            height: 50,
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: SizedBox(
                              child: ElevatedButton.icon(
                                label: Text('Login'),
                                icon: Icon(Icons.keyboard_arrow_right_sharp),
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(25.0)),
                                  primary: Color(0xffEC524B),
                                  padding: EdgeInsets.all(15),
                                  onPrimary: Color(0xffF3EAC2),
                                  elevation: 5,
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Choice()));
                                  print(nameController.text);
                                  print(passwordController.text);
                                },
                              ),
                            )),
                        Container(
                          height: 30,
                        ),
                        Container(
                            child: Row(
                              children: <Widget>[
                                Text(
                                  'Do not have an account?',
                                  style: TextStyle(
                                    color: Color(0xffC0791E),
                                  ),
                                ),
                                FlatButton(
                                  textColor: Colors.blue,
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          'Sign Up',
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Color(0xffC0791E),
                                          ),
                                        ),
                                        Container(
                                          width: 10,
                                        ),
                                        Icon(Icons.arrow_drop_down_circle_outlined,
                                            color: Color(0xffC0791E))
                                      ],
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).push(MaterialPageRoute(
                                        builder: (context) => Signup()));
                                    //signup screen
                                  },
                                )
                              ],
                              mainAxisAlignment: MainAxisAlignment.center,
                            ))
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
