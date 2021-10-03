import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:google_fonts/google_fonts.dart';

class AdoptScreen extends StatelessWidget {
  final String imageurl, animal, name;
  final int id;

  AdoptScreen(
      {Key? key,
      required this.imageurl,
      required this.animal,
      required this.id})
      : name = new Faker(seed: id).person.firstName(),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(imageurl),
          Container(
              padding: EdgeInsets.all(20),
              child: Text(
                '$name is a delightful $animal that’s been with us for 4 years now. She is looking for a new owner, and it could just be you!\n\n$name has been vaccinated and is in the best of shape healthwise and characterwise. She’s really playful and you will definitely fall in love with her immediately.',
                style: TextStyle(fontSize: 18, color: Colors.black87),
                textAlign: TextAlign.center,
              )),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Color(0xffdefffd))),
              onPressed: () {},
              child: Text(
                "Adopt",
                style: GoogleFonts.amaticSc(
                    textStyle: TextStyle(fontSize: 54),
                    fontWeight: FontWeight.bold,
                    color: Color(0xff46AECE)),
              )),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  "or donate to our cause",
                  style: GoogleFonts.amaticSc(
                      textStyle: TextStyle(fontSize: 30),
                      fontWeight: FontWeight.bold,
                      color: Color(0xff46AECE)),
                )),
          )
        ],
      ),
      SafeArea(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton.icon(
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.white)),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
              label: Text(
                "Go back",
              )),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.share), color: Colors.white)
        ],
      ))
    ]));
  }
}
