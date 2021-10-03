import 'package:flutter/material.dart';
import 'package:trees_go/main.dart';
import 'List.dart';
import 'Settings.dart';

class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3EAC2),
body: SafeArea(
  child: Padding(
    padding: EdgeInsets.all(15),
    child: Column(
      children: [
        ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [

             ClipRRect(
               borderRadius: BorderRadius.circular(100),
              child: Image.network('https://cdn1.iconfinder.com/data/icons/avatars-1-5/136/60-512.png', height: 200,
  width: 200,),

            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
             Container(

              child: Row(
mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Username',style: TextStyle(
                    fontSize: 22,
                    //backgroundColor: Color(0xFF9AD3BC),

                    fontWeight: FontWeight.bold,
                    color: Color(0xFFC0791E)
                  ),

                    overflow: TextOverflow.ellipsis,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.18,
                  ),
                  IconButton(onPressed:  (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Settings()));
                  }, icon: Icon(Icons.edit,))
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all( 10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'PhoneNumber',style: TextStyle(
                    fontSize: 22,
                    //backgroundColor: Color(0xFF9AD3BC),

                    fontWeight: FontWeight.bold,
                    color: Color(0xFFC0791E)
                ),

                  overflow: TextOverflow.ellipsis,
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.14,
                ),
                IconButton(onPressed:  (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Settings()));
                }, icon: Icon(Icons.edit,)),

              ],
            ),
            Padding(padding: EdgeInsets.all( 10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Pets I have Dontaed to',style: TextStyle(
                    fontSize: 22,


                    fontWeight: FontWeight.bold,
                    color: Color(0xFFC0791E)
                ),

                  overflow: TextOverflow.ellipsis,
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.05,
                ),
                 Align(
                   alignment: Alignment.centerLeft,
                  child: IconButton(onPressed:  (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>List()));
                  }, icon: Icon(Icons.list_alt,)),
                ),

              ],
            ),
            Padding(padding: EdgeInsets.all( 10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Pets I have Adopted',style: TextStyle(
                    fontSize: 22,


                    fontWeight: FontWeight.bold,
                    color: Color(0xFFC0791E)
                ),

                  overflow: TextOverflow.ellipsis,
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.08,
                ),

                IconButton(onPressed:  (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>List()));
                }, icon: Icon(Icons.list_alt,)),
              ],
            ),



          ],
        ),
        Padding(padding: EdgeInsets.all(40)),
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
            label: Text('Sign Out'),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MyHomePage()));
            },
            icon: Icon(Icons.logout),
          ),
        ),
      ],

    ),
  ),
),
    );
  }
}
