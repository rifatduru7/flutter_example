import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: CitySelectorWidget(),
    );
  }
}

class CitySelectorWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CitySelectorState();
}

class CitySelectorState extends State<CitySelectorWidget> {
  var cities = ["Ankara", "İstanbul", "Antalya", "Eskişehir", "Trabzon"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("City Selection App"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            DropdownButton<String>(
              items: cities.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              value: "İstanbul",
              onChanged: (String value) {},
            )
          ],
        ),
      ),
    );
  }
}

/* class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StudentDialogState();  
  } */

/* class StudentDialogState extends State<MyHomePage>{
  String studentName = "";
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Info"),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            onChanged: (String nameToChange){
              setState(() {
                studentName = nameToChange;
              });
            },
          ),
          Text( "Hello :"+studentName)
        ],
      ),
    );
  }
} */
