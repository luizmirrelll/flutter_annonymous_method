import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String massage = "ini adalah text";

  void tomboltekan() {
    setState(() {
      //supaya mengikuti atau mengupdate
      massage =
          "tombol sudah ditekan"; //maksud dari anonymous method adlah method yang dipake cuma sekli
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("latihan anonymous method"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(massage),
              RaisedButton(
                child: Text("tekan saya"),
                onPressed: tomboltekan,
                //bisa juga seperti ini (){setState(() {massage = "tombol sudah ditekan";});
              )
            ],
          ),
        ),
      ),
    );
  }
}
