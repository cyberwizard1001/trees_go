import 'package:flutter/material.dart';
import 'package:trees_go/card_listview.dart';

class Animals extends StatefulWidget {
  const Animals({Key? key}) : super(key: key);

  @override
  _AnimalsState createState() => _AnimalsState();
}

class _AnimalsState extends State<Animals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffEC524B),
        toolbarHeight: 80,
        title: Text(
          'Choose a category',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
              ElevatedButton(
                  onPressed: () {},
                  onLongPress: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xff9AD3BC)),
                      elevation: MaterialStateProperty.all<double>(20),
                      shadowColor:
                          MaterialStateProperty.all<Color>(Color(0xffEC524B)),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                          CircleBorder())),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/dog.jpg',
                      height: 200,
                      width: 200,
                    ),
                  )),
              Container(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => CardsView()));
                  },
                  onLongPress: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xff9AD3BC)),
                      elevation: MaterialStateProperty.all<double>(20),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                          CircleBorder())),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image(
                      image: AssetImage('assets/cat.jpg'),
                      height: 200,
                      width: 200,
                    ),
                  )),
              Container(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {},
                  onLongPress: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xff9ad3bc)),
                      elevation: MaterialStateProperty.all<double>(20),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                          CircleBorder())),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/parrot.jpg',
                      height: 200,
                      width: 200,
                    ),
                  )),
              Container(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {},
                  onLongPress: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xff9AD3BC)),
                      elevation: MaterialStateProperty.all<double>(20),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                          CircleBorder())),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/others.jpg',
                      height: 200,
                      width: 200,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
