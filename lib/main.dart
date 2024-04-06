import 'package:flutter/material.dart';
import 'package:gokyuzudevsite/components/drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gokyuzu Development',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFF0000)),
        useMaterial3: false,
      ),
      home: MyHomePage(title: "Gokyuzu Development",),
    );
  }
}
