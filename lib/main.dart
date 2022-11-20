import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double velo = 100;
  final bool _key = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marquee',
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
                  child: Row(children: [
                Container(
                  margin: const EdgeInsets.all(8),
                  child: TextButton(
                    style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 0, 0, 0)),
                        overlayColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 207, 207, 207)),
                        shadowColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 33, 82, 243)),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 255, 255, 255)),
                        animationDuration: const Duration(seconds: 1)),
                    onPressed: () {
                      setState(() {
                        velo = 100;
                      });
                    },
                    child: const Text('Start'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  child: TextButton(
                    style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 0, 0, 0)),
                        overlayColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 207, 207, 207)),
                        shadowColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 33, 82, 243)),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 255, 255, 255)),
                        animationDuration: const Duration(seconds: 1)),
                    onPressed: () {
                      setState(() {
                        velo = 0.001;
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
                            const Color.fromARGB(255, 207, 207, 207)),
                        shadowColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 33, 82, 243)),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 255, 255, 255)),
                        animationDuration: const Duration(seconds: 1)),
                    onPressed: () {
                      setState(() {
                        velo = 300;
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
                            const Color.fromARGB(255, 207, 207, 207)),
                        shadowColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 33, 82, 243)),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 255, 255, 255)),
                        animationDuration: const Duration(seconds: 1)),
                    onPressed: () {
                      setState(() {
                        velo = 100;
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
          ? "Lorem ipsum dolor sit amet. Ut voluptatibus omnis est doloremque repellendus non impedit tempora non quod recusandae vel corrupti officiis est incidunt fugiat! Et ipsam quibusdam vel voluptas sequi et exercitationem facilis ex sequi sint. Ab Quis consequatur ut dolor expedita et dignissimos natus eum deleniti velit et sunt quas eos quod atque aut porro voluptatem. Et nihil adipisci ut magni dolorum non eius soluta."
          : 'key error',
      style: const TextStyle(
          fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),
      scrollAxis: Axis.vertical,
      crossAxisAlignment: CrossAxisAlignment.center,
      blankSpace: 30,
      startPadding: 10,
      velocity: velo,
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
