import 'package:flutter/material.dart';

import 'Animals.dart';

class Choice extends StatefulWidget {
  const Choice({Key? key}) : super(key: key);

  @override
  _ChoiceState createState() => _ChoiceState();
}

class _ChoiceState extends State<Choice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3EAC2),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.3,
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.4,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Container(
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
                      label: Text('DID YOU FIND ONE?'),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Animals()));
                      },
                      icon: Icon(Icons.search),
                    ),
                     Container(
                       width: MediaQuery.of(context).size.width*0.3,
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
                      label: Text('DID YOU WANT ONE?'),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Animals()));
                      },
                      icon: Icon(Icons.mail),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.3,
            ),
          ],
        ),
      ),
    );
  }
}
