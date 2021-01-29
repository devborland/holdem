import 'package:flutter/material.dart';

import 'pages/table_page.dart';

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
        body: TablePage(),
      ),
    );
  }
}
