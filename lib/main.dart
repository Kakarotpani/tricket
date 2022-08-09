import 'package:flutter/material.dart';
import 'package:tricket/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
    );
  }
}
