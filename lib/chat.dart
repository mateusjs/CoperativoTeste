import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  String texto = "";
  TextEditingController _textFieldController = TextEditingController();

  _onSend() {
    setState(() {
      texto = _textFieldController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(5),
          child: Container(
            padding: EdgeInsets.all(3),
            height: MediaQuery.of(context).size.height * 0.69,
            width: MediaQuery.of(context).size.width * 100,
            child: Text(_textFieldController.text),
          ),
        ),
        Container(
          child: Padding(
            //Add padding around textfield
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              controller: _textFieldController,
              maxLines: 2,
              onChanged: _onSend(),
              decoration: InputDecoration(
                //Add th Hint text here.
                hintText: "An Outline Border TextField",
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
