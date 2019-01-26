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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StudentDialogState();  
  }
  
class StudentDialogState extends State<MyHomePage>{
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
          Text("Hello :"+studentName)
        ],
      ),
    );
  }

}
