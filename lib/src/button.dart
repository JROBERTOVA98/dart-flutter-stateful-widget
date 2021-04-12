import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  MyButtonState createState() => MyButtonState();
}

class MyButtonState extends State<MyButton> {
  String flutterTxt = "";

  int index = 0;

  //Lista de los textos que se mostraran en pantalla
  List<String> collections = ['Texto 1', 'Texto 2', 'Texto 3'];

  void onPressButton() {
    setState(() {
      flutterTxt = collections[index];
      index = index < 2 ? index + 1: 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Stateful Widget"),
          backgroundColor: Colors.orangeAccent,
        ),
        body: Container(
          child: Center(
            child: Column(
              //Poner texto en el centro de la pantalla
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(flutterTxt, style: TextStyle(fontSize: 40)),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                //Poner el btn debajo del texto
                RaisedButton(
                  child: Text(
                    "Actualizar",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blueAccent,
                  onPressed: onPressButton,
                )
              ],
            ),
          ),
        ));
  }
}
