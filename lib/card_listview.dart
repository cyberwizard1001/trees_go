import 'package:flutter/material.dart';

class CardsView extends StatefulWidget {
  const CardsView({Key? key}) : super(key: key);

  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<CardsView> {
  var _cards = 0;

  void _incrementCard() {
    //TODO: Replace so it gets number of cards from API
    setState(() {
      _cards = 10;
    });
  }

  Card buildCard(var cardNumber) {
    var name = 'Name of pet';
    var age = 'Age of pet';
    var cardImage = NetworkImage(
        'https://images.unsplash.com/photo-1552053831-71594a27632d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=724&q=80');
    var breed = 'Breed of pet';
    var gender = 'Gender of pet';
    return Card(
        elevation: 15.0,
        color: Color(0xffF3EAC2),
        child: Column(
          children: [
            ListTile(title: Text(name), subtitle: Text(breed)),
            Container(
              height: 300.0,
              child: Ink.image(
                image: cardImage,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.centerLeft,
              child: Text(gender),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 20.0,right: 15.0),
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0)),
                    primary: Color(0xffEC524B),
                    padding: EdgeInsets.all(15),
                    onPrimary: Color(0xffF3EAC2),
                    elevation: 5,
                  ),
                  child: Text('Learn more')),
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    _incrementCard();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffF3EAC2),
        body: ListView.builder(
            itemCount: _cards,
            itemBuilder: (context, index) {
              return buildCard(index);
            }),
      ),
    );
  }
}
