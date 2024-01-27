import 'package:flutter/material.dart';
import 'package:flutter_practice/dylist.dart';
main() {
  runApp(const MyApp()); // application
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        color: Colors.blue,
        debugShowCheckedModeBanner: false,
        title: "Flutter Practice",
        theme: ThemeData(
          primarySwatch: Colors.green,
          useMaterial3: true,
        ),
        home: ListViewWidget());
  }
}

