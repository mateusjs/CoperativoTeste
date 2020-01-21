import 'package:cooperativas/chat.dart';
import 'package:cooperativas/racao.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _children = [
   StatusPage(),
   Chat()
 ];
  _currentIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teste"),
      ),
      body:_children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _currentIndex,
        currentIndex: _selectedIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment),
            title: Text('Controle'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            title: Text("Chat"),
          )
        ],
      ),
    );
  }
}
