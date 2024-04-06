import 'package:flutter/material.dart';
import 'package:gokyuzudevsite/pages/anasayfa.dart';
import 'package:gokyuzudevsite/pages/makalelerimiz.dart';
import 'dart:html' as html;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    const Anasayfa(),
    Makalelerimiz(),
    const Anasayfa(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: currentWidth < 600 ? AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: GestureDetector(
          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MyHomePage(title: "Gokyuzu Development")));
          },
            child: Image.asset("assets/images/logo2.jpg",width: 300,))
      ) : null,
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: const Text('Anasayfa',style: TextStyle(fontSize: 18,fontFamily: "Gentium"),),
              selected: _selectedIndex == 0,
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Makalelerimiz',style: TextStyle(fontSize: 18,fontFamily: "Gentium"),),
              selected: _selectedIndex == 1,
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Uygulamalarımız',style: TextStyle(fontSize: 18,fontFamily: "Gentium"),),
              selected: _selectedIndex == 2,
              onTap: () {
                _onItemTapped(2);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Instagram',style: TextStyle(fontSize: 18,fontFamily: "Gentium"),),
              selected: _selectedIndex == 3,
              onTap: () {
                html.window.location.href = "https://instagram.com/emiredenhan";
                Navigator.pop(context);

              },
            ),
            ListTile(
              title: const Text('Linked-in',style: TextStyle(fontSize: 18,fontFamily: "Gentium"),),
              selected: _selectedIndex == 4,
              onTap: () {
                html.window.location.href = "https://www.linkedin.com/in/emirhan-soylu-5b1941251/";
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('X',style: TextStyle(fontSize: 18,fontFamily: "Gentium"),),
              selected: _selectedIndex == 5,
              onTap: () {
                html.window.location.href = "https://twitter.com/emo_muu";
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Github',style: TextStyle(fontSize: 18,fontFamily: "Gentium"),),
              selected: _selectedIndex == 6,
              onTap: () {
                html.window.location.href = "https://github.com/emomu";
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}