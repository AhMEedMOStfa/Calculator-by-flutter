import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget buttonForm(String btnText, Color txtColor, Color backgroundBtn,
        [int btnFlex = 1]) {
      return Expanded(
        flex: btnFlex,
        child: Container(
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(backgroundBtn),
                padding: MaterialStateProperty.all(EdgeInsets.all(20))),
                
            child: Text(
              btnText,
              style: TextStyle(color: txtColor, fontSize: 40),
            ),
          ),
        ),
      );
    }

    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text("Calculator"),
        centerTitle: true,
      ),
      body: Padding(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    '0',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  buttonForm('C', Colors.white, Colors.red),
                  buttonForm('/', Colors.white, Colors.blue),
                  buttonForm('x', Colors.white, Colors.blue),
                  buttonForm('AC', Colors.white, Colors.blue),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  buttonForm('7', Colors.white, Colors.blue),
                  buttonForm('8', Colors.white, Colors.blue),
                  buttonForm('9', Colors.white, Colors.blue),
                  buttonForm('-', Colors.white, Colors.blue),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  buttonForm('4', Colors.white, Colors.blue),
                  buttonForm('5', Colors.white, Colors.blue),
                  buttonForm('6', Colors.white, Colors.blue),
                  buttonForm('+', Colors.white, Colors.blue),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  buttonForm('1', Colors.white, Colors.blue),
                  buttonForm('2', Colors.white, Colors.blue),
                  buttonForm('3', Colors.white, Colors.blue),
                  buttonForm('=', Colors.white, Colors.blue),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  buttonForm('0', Colors.white, Colors.blue, 2),
                  buttonForm(',', Colors.white, Colors.blue),
                  buttonForm(',', Colors.white, Colors.blue),
                ],
              ),
            ],
          )),
    ));
  }
}
