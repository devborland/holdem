import 'package:flutter/material.dart';
import 'card_builder.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hold\'em All'),
          backgroundColor: Colors.green,
        ),
        backgroundColor: Colors.green,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CardBuilder('Ac'),
                CardBuilder('Ah'),
                CardBuilder('As'),
                CardBuilder('Ad'),
                CardBuilder('Kc'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CardBuilder('6s'),
                CardBuilder('Kd'),
                SizedBox(width: 100.0),
                CardBuilder('6s'),
                CardBuilder('Kd'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
