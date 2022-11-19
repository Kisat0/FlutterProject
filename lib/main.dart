import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double velo = 100;
  String but = "Accélérer";
  String but2 = "Stop";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marquee',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: ListView(
            padding: EdgeInsets.only(top: 50),
            children: [
              Column(
                children: [_buildComplexMarquee()].map(_wrapWithStuff).toList(),
              ),
              Row(children: [
                TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    overlayColor: MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () {
                    setState(() {
                      if (but2 == 'Stop') {
                        but2 = 'Start';
                        velo = 10;
                      } else {
                        but2 = 'Stop';
                        velo = 100;
                      }
                    });
                  },
                  child: Text(but2),
                ),
                TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    overlayColor: MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () {
                    setState(() {
                      if (but == 'Ralentir') {
                        but = 'Accélérer';
                        velo = 100;
                      } else {
                        but = 'Ralentir';
                        velo = 200;
                      }
                    });
                  },
                  child: Text(but),
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildComplexMarquee() {
    return Marquee(
      text: ('Hellooooooooooooooooooooooooooooooooo'),
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      scrollAxis: Axis.vertical,
      crossAxisAlignment: CrossAxisAlignment.center,
      blankSpace: 20,
      startPadding: 10,
      velocity: velo,
      textDirection: TextDirection.ltr,
    );
  }

  Widget _wrapWithStuff(Widget child) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Center(
        child: Container(height: 500, color: Colors.black, child: child),
      ),
    );
  }
}
