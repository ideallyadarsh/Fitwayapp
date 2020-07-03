import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';

void main() =>runApp (MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Start(),
    );
  }
}
class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 10), ()=>Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context)=>Home())));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,

      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/logo.png",height: 120,),
              SizedBox(height: (MediaQuery.of(context).size.height)/3,),
              CircularProgressIndicator(backgroundColor: Colors.white,),
              SizedBox(height: 10,),
              Text("LOADING...",style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
      ),

    );
  }
}
