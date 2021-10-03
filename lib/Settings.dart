import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Image.network( 'https://cdn1.iconfinder.com/data/icons/avatars-1-5/136/60-512.png'),
      ),
    );
  }
}
