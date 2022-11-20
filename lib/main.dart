import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double speed = 100;
  final bool _key = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marquee',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: ListView(
            padding: const EdgeInsets.only(top: 50),
            children: [
              Column(
                children: [_buildComplexMarquee()].map(_wrapWithStuff).toList(),
              ),
              Center(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Container(
                      margin: const EdgeInsets.all(8),
                      child: TextButton(
                        style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 0, 0, 0)),
                            overlayColor: MaterialStateProperty.all<Color>(
                                Color.fromARGB(255, 230, 164, 133)),
                            shadowColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 33, 82, 243)),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 255, 255, 255)),
                            animationDuration: const Duration(seconds: 1)),
                        onPressed: () {
                          setState(() {
                            speed = 0.001;
                          });
                        },
                        child: const Text('Stop'),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(8),
                      child: TextButton(
                        style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 0, 0, 0)),
                            overlayColor: MaterialStateProperty.all<Color>(
                                Color.fromARGB(255, 230, 164, 133)),
                            shadowColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 33, 82, 243)),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 255, 255, 255)),
                            animationDuration: const Duration(seconds: 1)),
                        onPressed: () {
                          setState(() {
                            speed = 300;
                          });
                        },
                        child: const Text('Speed'),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(8),
                      child: TextButton(
                        style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 0, 0, 0)),
                            overlayColor: MaterialStateProperty.all<Color>(
                                Color.fromARGB(255, 230, 164, 133)),
                            shadowColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 33, 82, 243)),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 255, 255, 255)),
                            animationDuration: const Duration(seconds: 1)),
                        onPressed: () {
                          setState(() {
                            speed = 100;
                          });
                        },
                        child: const Text('Slow Down'),
                      ),
                    ),
                  ])),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildComplexMarquee() {
    return Marquee(
      key: Key("$_key"),
      text: !_key
          ? "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla velit"
          : 'key error',
      style: const TextStyle(
          fontWeight: FontWeight.bold, color: Colors.white, fontSize: 15),
      scrollAxis: Axis.vertical,
      crossAxisAlignment: CrossAxisAlignment.center,
      blankSpace: 30,
      startPadding: 10,
      velocity: speed,
      textDirection: TextDirection.ltr,
    );
  }

  Widget _wrapWithStuff(Widget child) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Center(
        child: Container(height: 800, color: Colors.black, child: child),
      ),
    );
  }
}
