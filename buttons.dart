import 'package:flutter/material.dart';

class Myclass4 extends StatefulWidget {
  Color c = Colors.amberAccent;
  @override
  State<StatefulWidget> createState() {
    return (Mystate());
  }
}

class Mystate extends State<Myclass4> {
  Color c = Colors.amberAccent;
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Text('Result is here', style: TextStyle(backgroundColor: c)),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    c = Colors.red;
                  });
                },
                child: Text('RED')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    c = Colors.green;
                  });
                },
                child: Text('Green')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    c = Colors.amberAccent;
                  });
                },
                child: Text('Default')),
          ],
        ),
        appBar: AppBar(title: Text('App Bar')),
      ),
    ));
  }
}
