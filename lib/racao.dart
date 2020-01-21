import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class StatusPage extends StatefulWidget {
  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  final controllerExpand = ExpandableController();

  @override
  void initState() {
    controllerExpand.expanded = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ExpandablePanel(
        controller: controllerExpand,
        header: Container(
          margin: const EdgeInsets.all(8),
          height: 50,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.pink[300]),
              color: Colors.pink[50],
              borderRadius: BorderRadius.all(Radius.circular(50))),
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
            child: Text('Suínos',
                textAlign: TextAlign.center, style: TextStyle(fontSize: 30)),
            alignment: Alignment(0.0, 0.0),
          ),
        ),
        collapsed: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.95,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                border: Border(
              top: BorderSide(width: 1.0, color: Colors.black12),
              left: BorderSide(width: 1.0, color: Colors.black12),
              right: BorderSide(width: 1.0, color: Colors.black12),
              bottom: BorderSide(width: 1.0, color: Colors.black12),
            )),
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
                            onPressed: () {},
                            textColor: Colors.white,
                            padding: const EdgeInsets.all(0.0),
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                gradient: LinearGradient(
                                  colors: <Color>[
                                    Color(0xFF0D47A1),
                                    Color(0xFF1976D2),
                                    Color(0xFF42A5F5),
                                  ],
                                ),
                              ),
                              padding: const EdgeInsets.all(10.0),
                              child: const Text('Iniciar Conversa',
                                  style: TextStyle(fontSize: 20)),
                            )),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        tapHeaderToExpand: true,
        hasIcon: false,
      ),
    );
  }
}
