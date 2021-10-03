import 'package:flutter/material.dart';

class CardsView extends StatefulWidget {
  const CardsView({Key? key}) : super(key: key);

  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<CardsView> {

  var _cards = 0;

  void _incrementCard(){
    //TODO: Replace so it gets number of cards from API
    setState(() {
      _cards = 10;
    });
  }

  Card buildCard(var cardNumber) {
    var name = 'Name of pet';
    var age = 'Breed of pet';
    var cardImage = NetworkImage(
        'https://images.unsplash.com/photo-1552053831-71594a27632d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=724&q=80');
    var breed = 'Breed of animal';
    var gender = 'Gender of pet';
    return Card(
        elevation: 4.0,
        child: Column(
          children: [
            ListTile(
              title: Text(name),
              subtitle: Text(breed),
              trailing: Icon(Icons.favorite_outline),
            ),
            Container(
              height: 200.0,
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
            ButtonBar(
              children: [
                TextButton(
                  child: const Text('Adopt'),
                  onPressed: () {/* ... */},
                ),
                TextButton(
                  child: const Text('Take home'),
                  onPressed: () {/* ... */},
                )
              ],
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
            itemCount: _cards,
            itemBuilder: (context,index){
          return buildCard(index);
        }
        ),
      ),
    );
  }
}