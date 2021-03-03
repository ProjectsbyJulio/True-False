import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Julio Canizalez",
            style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 24,
                fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Laboratorio 2",
              style: TextStyle(fontSize: 24, fontFamily: 'Comfortaa'),
            ),
            SizedBox(
              height: 20,
            ),
            StatefulApp()
          ],
        )),
      ),
    );
  }
}

class StatefulApp extends StatefulWidget {
  @override
  State createState() => _StatefulApp();
}

class _StatefulApp extends State<StatefulApp> {
  var isSwitchOn = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(isSwitchOn ? "src/img/imagen1.jpg" : "src/img/imagen2.jpg"),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  setState(() {
                    isSwitchOn = true;
                  });
                },
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.greenAccent[700],
                ),
                child: Text("Verdadero",
                    style: TextStyle(fontFamily: 'Comfortaa', fontSize: 17))),
            SizedBox(
              width: 50,
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    isSwitchOn = false;
                  });
                },
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.redAccent[700],
                ),
                child: Text(
                  "Falso",
                  style: TextStyle(fontFamily: 'Comfortaa', fontSize: 17),
                ))
          ],
        )
      ],
    );
  }
}
