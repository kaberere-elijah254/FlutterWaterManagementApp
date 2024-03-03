//import 'dart:math';

import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color.fromARGB(255, 248, 236, 246),
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 144, 223, 128),
                            width: 1),
                        borderRadius: BorderRadius.circular(10)),
                    child: IconButton(
                        // ignore: prefer_const_constructors
                        icon: Icon(Icons.arrow_back_ios_new_sharp),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ),
                ),
                Text(
                  "Real time water usage ",
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 123, 224, 110)),
                ),
              ],
            ),
          )),
    );
  }
}
/*import 'package:flutter/material.dart';
import '';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RealTimeChart(
      stream: positiveDataStream(),
      graphColor = Colors.red,
    );
  }
}

Stream<double> positiveDataStream() {
  return Stream.periodic(const Duration(milliseconds: 500), (_) {
    return Random().nextInt(300).toDouble();
  }).asBroadcastStream();
}*/
