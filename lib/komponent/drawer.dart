import 'package:flutter/material.dart';
import 'package:gokyuzudevsite/sayfalar/anasayfa.dart';
import 'package:gokyuzudevsite/sayfalar/makalelerimiz.dart';
import 'dart:html' as html;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Anasayfa(),
    Makalelerimiz(),
    Anasayfa(),
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
        title: Image.asset("resimler/logo2.jpg",width: 300,)
      ) : null,
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: const Text('Anasayfa',style: TextStyle(fontSize: 18,fontFamily: "Gentium"),),
              selected: _selectedIndex == 0,
              onTap: () {
                // Update the state of the app
                _onItemTapped(0);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Makalelerimiz',style: TextStyle(fontSize: 18,fontFamily: "Gentium"),),
              selected: _selectedIndex == 1,
              onTap: () {
                // Update the state of the app
                _onItemTapped(1);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Uygulamalarımız',style: TextStyle(fontSize: 18,fontFamily: "Gentium"),),
              selected: _selectedIndex == 2,
              onTap: () {
                // Update the state of the app
                _onItemTapped(2);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Instagram',style: TextStyle(fontSize: 18,fontFamily: "Gentium"),),
              selected: _selectedIndex == 3,
              onTap: () {
                // Update the state of the app
                html.window.location.href = "https://instagram.com/emiredenhan";
                // Then close the drawer
                Navigator.pop(context);

              },
            ),
            ListTile(
              title: const Text('Linked-in',style: TextStyle(fontSize: 18,fontFamily: "Gentium"),),
              selected: _selectedIndex == 4,
              onTap: () {
                // Update the state of the app
                html.window.location.href = "https://www.linkedin.com/in/emirhan-soylu-5b1941251/";
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('X',style: TextStyle(fontSize: 18,fontFamily: "Gentium"),),
              selected: _selectedIndex == 5,
              onTap: () {
                // Update the state of the app
                html.window.location.href = "https://twitter.com/emo_muu";
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Github',style: TextStyle(fontSize: 18,fontFamily: "Gentium"),),
              selected: _selectedIndex == 6,
              onTap: () {
                // Update the state of the app
                html.window.location.href = "https://github.com/emomu";
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}