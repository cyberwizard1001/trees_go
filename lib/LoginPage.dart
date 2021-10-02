import 'package:flutter/material.dart';


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
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color(0xff9AD3BC),



          body: Padding(
              padding: EdgeInsets.all(10),
              child: ListView(
                children: <Widget>[
                  Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'FOR-ANIMALS',
                        style: TextStyle(
                            color: Color(0xffC0791E),
                            fontWeight: FontWeight.w600,
                            fontSize: 30),
                      )),
                  Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Sign in',
                        style: TextStyle(fontSize: 20,color: Color(0xffC0791E),),
                      )),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      cursorColor: Color(0xffC0791E),
                      controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'User Name',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: TextField(
                      cursorColor: Color(0xffC0791E),

                      obscureText: true,
                      controller: passwordController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: (){
                      //forgot password screen
                    },
                    textColor: Colors.blue,
                    child: Text('Forgot Password',style: TextStyle(color: Color(0xffC0791E),),),
                  ),
                  Container(
                      height: 50,
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: RaisedButton(
                        textColor: Colors.white,
                        color: Color(0xffC0791E),
                        child: Text('Login'),
                        onPressed: () {
                          print(nameController.text);
                          print(passwordController.text);
                        },
                      )),
                  Container(height: 30,),
                  Container(
                      child: Row(
                        children: <Widget>[
                          Text('Do not have an account?',style: TextStyle(color: Color(0xffC0791E),),),
                          FlatButton(
                            textColor: Colors.blue,
                            child: Container(
                              child: Row(
                                children: [
                                  Text(
                                    'Sign in',
                                    style: TextStyle(fontSize: 20,color: Color(0xffC0791E),),
                                  ),
                                  Container(
                                    width: 10,
                                  ),
                                  Icon(Icons.arrow_drop_down_circle_outlined,color:Color(0xffC0791E))
                                ],
                              ),
                            ),
                            onPressed: () {
                              //signup screen
                            },
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ))
                ],
              ))
      ),
    );

  }
}
