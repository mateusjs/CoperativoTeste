import 'package:cooperativas/home.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/background.jpg"), fit: BoxFit.cover),
      ),
      child: Center(
          child: RaisedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        },
        child: Text("Ração"),
      )),
    );
  }
}
