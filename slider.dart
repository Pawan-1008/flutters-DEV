import 'package:flutter/material.dart';

class Myclass5 extends StatefulWidget {
  Color c = Colors.amberAccent;
  @override
  State<StatefulWidget> createState() {
    return (Mystate1());
  }
}

class Mystate1 extends State<Myclass5> {
  double v = 10, v2 = 10, v3 = 10;
  int x = 0;
  Color c = Color.fromARGB(255, 194, 23, 134);
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: c,
        body: Column(
          children: [
            Padding(
                padding: EdgeInsets.all(50),
                child: Slider(
                    min: 1,
                    max: 255,
                    value: v,
                    onChanged: (value) {
                      setState(() {
                        v = value;
                        x = value.toInt();
                        c = Color.fromARGB(
                            255, v.toInt(), v2.toInt(), v3.toInt());
                      });
                    })),
            Padding(
                padding: EdgeInsets.all(50),
                child: Slider(
                    min: 1,
                    max: 255,
                    value: v2,
                    onChanged: (value) {
                      setState(() {
                        v2 = value;
                        x = value.toInt();
                        c = Color.fromARGB(
                            255, v.toInt(), v2.toInt(), v3.toInt());
                      });
                    })),
            Padding(
                padding: EdgeInsets.all(50),
                child: Slider(
                    min: 1,
                    max: 155,
                    value: v3,
                    onChanged: (value) {
                      setState(() {
                        v3 = value;
                        x = value.toInt();
                        c = Color.fromARGB(
                            255, v.toInt(), v2.toInt(), v3.toInt());
                      });
                    }))
          ],
        ),
        appBar: AppBar(title: Text('Slider App')),
      ),
    ));
  }
}
