import 'package:flutter/material.dart';
import 'package:trees_go/main.dart';

class Signup extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Signup>{
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffF3EAC2),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                ),
                Text(
                  'Sign Up!',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xffEC524B),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextField(
                      decoration: const InputDecoration(
                        labelText: 'Username',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: const BorderSide(
                              color: Color(0xffEC524B), width: 2.0),
                        ),
                        hintText: 'Enter a nice, unique username!',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        labelText: 'E-Mail',
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: const BorderSide(
                              color: Color(0xffEC524B), width: 2.0),
                        ),
                        hintText: 'E-mail?',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: const BorderSide(
                              color: Color(0xffEC524B), width: 2.0),
                        ),
                        hintText: 'Secret, super safe password here.',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextField(
                      decoration: const InputDecoration(
                        labelText: 'Location',
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: const BorderSide(
                              color: Color(0xffEC524B), width: 2.0),
                        ),
                        hintText: 'Where do you live?',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        labelText: 'Phone',
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: const BorderSide(
                              color: Color(0xffEC524B), width: 2.0),
                        ),
                        hintText: 'Phone number :)',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                      primary: Color(0xffEC524B),
                      padding: EdgeInsets.all(15),
                      onPrimary: Color(0xffF3EAC2),
                      elevation: 5,
                    ),
                    label: Text('Sign Up'),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Signup()));
                    },
                    icon: Icon(Icons.assignment_turned_in),
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


