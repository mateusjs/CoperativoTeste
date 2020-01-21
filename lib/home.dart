import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controllerExpand = ExpandableController();
  @override
  void initState() {
    controllerExpand.expanded = true;
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teste"),
      ),
      body: SingleChildScrollView(
        child: ExpandablePanel(
          controller: controllerExpand,
          header: Container(
            margin: const EdgeInsets.all(8),
            height: 50,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.blue[400]),
                borderRadius: BorderRadius.all(Radius.circular(50))),
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
              child: Text('Suínos',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xFF000000), fontSize: 30)),
              alignment: Alignment(0.0, 0.0),
            ),
          ),
          collapsed: Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
                left: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
                right: BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)),
                bottom: BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)),
              ),
            ),
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircularPercentIndicator(
                              radius: 150.0,
                              lineWidth: 10.0,
                              percent: 1.0,
                              animation: true,
                              animationDuration: 1200,
                              center: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "100%",
                                    style: TextStyle(fontSize: 40),
                                  ),
                                  Text("100Kg"),
                                  Text("Ração recebida")
                                ],
                              ),
                              progressColor: Colors.green,
                            ),
                          ],
                        ),
                        alignment: Alignment(0, 0),
                      ),
                      SizedBox(height: 10),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircularPercentIndicator(
                              radius: 150.0,
                              lineWidth: 10.0,
                              percent: 0.7,
                              animation: true,
                              animationDuration: 1200,
                              center: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "70%",
                                    style: TextStyle(fontSize: 40),
                                  ),
                                  Text("700Kg"),
                                  Text("Ração atual")
                                ],
                              ),
                              progressColor: Colors.blue,
                            ),
                          ],
                        ),
                        alignment: Alignment(0, 0),
                      ),
                      SizedBox(height: 10),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircularPercentIndicator(
                              radius: 150.0,
                              lineWidth: 10.0,
                              percent: 0.0,
                              animation: true,
                              animationDuration: 1200,
                              center: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "0%",
                                    style: TextStyle(fontSize: 40),
                                  ),
                                  Text("Em 30 dias!"),
                                  Text("Dia 21/02")
                                ],
                              ),
                              progressColor: Colors.green,
                            ),
                          ],
                        ),
                        alignment: Alignment(0, 0),
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: RaisedButton(
                          child: Text("Iniciar uma conversa"),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          tapHeaderToExpand: true,
          hasIcon: false,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment),
            title: Text('Controle'),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text("Chat"))
        ],
      ),
    );
  }
}
