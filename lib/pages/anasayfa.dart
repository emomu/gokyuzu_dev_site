import 'package:flutter/material.dart';
import 'package:gokyuzudevsite/components/drawer.dart';
import 'package:gokyuzudevsite/pages/anasayfa%20responsive%201800.dart';
import 'package:gokyuzudevsite/pages/anasayfa%20responsive%20600.dart';
import 'package:gokyuzudevsite/pages/makalelerimiz.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;

    return Scaffold(

      appBar: currentWidth > 600 ? AppBar(
        backgroundColor: Colors.black,
        title: GestureDetector(
            onTap: (){
              Navigator.pushReplacement((context), MaterialPageRoute(builder: (context) => const MyHomePage(title: "Gokyuzu Development")));
            },
            child: Image.asset("assets/images/logo2.jpg",width: 300,)),
        centerTitle: false,
        leading: const Text(" "),
        actions: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize:const Size(150, 10),
                  backgroundColor: Colors.black
              ),
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MyHomePage(title: "Gokyuzu Development")));
              }, child: const Text("Uygulamalarımız",style: TextStyle(fontFamily:"Gentium",fontSize:16))),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                fixedSize: const Size(150,10),
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Makalelerimiz()));
              }, child:const Row(
                children: [
                  Text("Makalelerimiz",style: TextStyle(fontFamily:"Gentium",fontSize:16)),
                ],
              ))
        ],

      ) : null,
      backgroundColor: Colors.black,
      body: currentWidth < 600 ? const Anasayfa600(): const Anasayfa1800()
    );
  }
}
