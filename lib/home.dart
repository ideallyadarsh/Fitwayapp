import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void add(){
    print("Add function");
    setState(() {
      Firestore.instance.collection('app').add(
          {
            'name':"Adarsh",
            'age':20,
            'height':180,
          }
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.black,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("Fitway", style: TextStyle(color: Colors.white),),),
        body: Column(children: [
          RaisedButton(
            child: Text("Get", style: TextStyle(color: Colors.white),),
            onPressed: () => add(),
          )
        ],),
      ),
    );
  }

}
