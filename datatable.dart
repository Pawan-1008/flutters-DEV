import 'package:flutter/material.dart';

class Myclass12 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (Mystate12());
  }
}

class Mystate12 extends State<Myclass12> {
  List<DataRow> row = [];
  void addRow(String x, String y, String z) {
    var d1 = DataRow(
        cells: [DataCell(Text(x)), DataCell(Text(y)), DataCell(Text(z))]);
    setState(() {
      row.add(d1);
    });
  }

  List<DataRow> getRow() {
    return row;
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController t1 = new TextEditingController();
    TextEditingController t2 = new TextEditingController();
    TextEditingController t3 = new TextEditingController();
    return (MaterialApp(
      home: Scaffold(
          body: Column(
            children: [
              TextField(
                controller: t1,
              ),
              TextField(
                controller: t2,
              ),
              TextField(
                controller: t3,
              ),
              ElevatedButton(
                  onPressed: () {
                    var a = t1.text;
                    var b = t2.text;
                    var c = t3.text;
                    addRow(a, b, c);
                  },
                  child: Text("Add")),
              DataTable(columns: [
                DataColumn(label: Text("Id")),
                DataColumn(label: Text("name")),
                DataColumn(label: Text("address"))
              ], rows: getRow())
            ],
          ),
          appBar: AppBar(
            centerTitle: true,
            title: Text("datatable"),
          )),
    ));
  }
}
