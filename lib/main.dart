import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _useRtlText = false;

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
                _buildComplexMarquee(),
              ].map(_wrapWithStuff).toList(),
            ),
          )),
    );
  }

  Widget _buildComplexMarquee() {
    return Marquee(
      text: ('Hellooooooooooooooooooooooooooooooooo'),
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      scrollAxis: Axis.vertical,
      crossAxisAlignment: CrossAxisAlignment.center,
      blankSpace: 20,
      showFadingOnlyWhenScrolling: true,
      fadingEdgeStartFraction: 0.1,
      fadingEdgeEndFraction: 0.1,
      startPadding: 10,
      textDirection: _useRtlText ? TextDirection.rtl : TextDirection.ltr,
    );
  }

  Widget _wrapWithStuff(Widget child) {
    return Padding(
      padding: EdgeInsets.all(10),
      child:
      Center(
        child: Container(height: 500, color: Colors.black, child: child),
      ),
    );
  }
}
