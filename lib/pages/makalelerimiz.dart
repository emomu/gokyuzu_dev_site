import 'package:flutter/material.dart';
import 'package:gokyuzudevsite/components/drawer.dart';
import 'package:gokyuzudevsite/repo/makaleler.dart';
import 'dart:html' as html;

class Makalelerimiz extends StatefulWidget {
  const Makalelerimiz({super.key});

  @override
  State<Makalelerimiz> createState() => _MakalelerimizState();
}



class _MakalelerimizState extends State<Makalelerimiz> {

  Future<List<Makaleler>> makaleleriYukle() async {
    var makalelerListesi = <Makaleler>[];
    var m1 = Makaleler(makale_ismi: "Dart'ta Nesne Tabanlı Programlama",
        makale_aciklama: "Dart dilinde nesne tabanlı programlamayı çok açıklayıcı bir şekilde öğrenebileceksiniz.",
        id: 1,
        tarih: "30/03/2024",
        resim: "resimler/logo.png",
        yazar: "Emirhan Soylu"
    );
    var m2 = Makaleler(makale_ismi: "Shared Preferences",
      makale_aciklama: "Android cihazlar için ilkel durumda olan Shared Preferences'i kolay bir şekilde öğrenebileceksiniz ve projelerinize entegre edebileceksiniz.",
      id: 2,
      tarih: "2/04/2024",
      resim: "resimler/logo.png",
      yazar: "Emirhan Soylu",
    );
    var m3 = Makaleler(makale_ismi: "Bloc ve Cubit Yapısının Kullanımı ve Arasındaki Farklar",
        makale_aciklama: "Bloc ve Cubit yapısının mantığını öğrenebileceksiniz. Ayrıca Cubit ve Bloc yapısını kullanabilecek, arasındaki farkları daha iyi kavrayabileceksiniz.",
        id: 3,
        tarih: "2/04/2024",
        resim: "resimler/logo.png",
        yazar: "Emirhan Soylu"
    );
    makalelerListesi.add(m1);
    makalelerListesi.add(m2);
    makalelerListesi.add(m3);
    return makalelerListesi;
  }



  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: screenWidth > 600 ? AppBar(
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => const MyHomePage(title: "Gokyuzu Development")));
              }, child: const Text("Uygulamalarımız",style: TextStyle(fontFamily:"Gentium",fontSize:16))),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                fixedSize: const Size(150,10),
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Makalelerimiz()));
              }, child: const Text("Makalelerimiz",style: TextStyle(fontFamily:"Gentium",fontSize:16)))
        ],

      ): null,
      body: FutureBuilder<List<Makaleler>>(
        future: makaleleriYukle(),
        builder: (context,snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return const CircularProgressIndicator();
          } else if(snapshot.hasData){
            var makalelerListesi = snapshot.data;
            return ListView.builder(
                itemCount: makalelerListesi!.length,
                itemBuilder: (context,index){
                  var makale = makalelerListesi[index];
                  return GestureDetector(
                      onTap: (){
                        html.window.location.href = "http://gokyuzudev.com.tr/makaleler/${makale.id}/${makale.id}.html";

                      },
                      child: screenWidth > 600 ? Padding(
                        padding: EdgeInsets.only(top: 10.0,left: screenWidth/5,right: screenWidth/5),
                        child: Card(
                          color: Colors.black,
                          // Define the shape of the card
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              color: Colors.white,
                                width: 1.0
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          // Define how the card's content should be clipped
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          // Define the child widget of the card
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              // Add padding around the row widget
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          // Add some spacing between the top of the card and the title
                                          Container(height: 5),
                                          // Add a title widget
                                          Text(
                                            makale.makale_ismi,
                                            style: const TextStyle(
                                              color: Colors.white,fontWeight: FontWeight.w300,
                                              fontFamily: "Gentium",fontSize: 22
                                            ),
                                          ),
                                          // Add some spacing between the title and the subtitle
                                          Container(height: 5),
                                          // Add a subtitle widget
                                          Text(
                                            makale.makale_aciklama,
                                            style: TextStyle(
                                              color: Colors.grey[500],fontFamily: "Gentium",fontSize: 17
                                            ),
                                          ),
                                          // Add some spacing between the subtitle and the text
                                          Container(height: 10),
                                          // Add a text widget to display some text
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Yayım Tarihi: ${makale.tarih}",style:
                                                TextStyle(
                                                  color: Colors.grey[700],fontFamily: "Gentium",fontSize: 16
                                                ),),
                                              Text(
                                                "Yazar: ${makale.yazar}",
                                                maxLines: 2,
                                                style:TextStyle(
                                                  color: Colors.grey[700],fontFamily: "Gentium",fontSize: 16
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ) : Card(
                        color: Colors.black,
                        // Define the shape of the card
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                          side: const BorderSide(width: 1.0,color: Colors.white)
                        ),
                        // Define how the card's content should be clipped
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        // Define the child widget of the card
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            // Add padding around the row widget
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        // Add some spacing between the top of the card and the title
                                        Container(height: 5),
                                        // Add a title widget
                                        Text(
                                          makale.makale_ismi,
                                          style: const TextStyle(
                                              color: Colors.white,fontWeight: FontWeight.w300,
                                              fontFamily: "Gentium",fontSize: 22
                                          ),
                                        ),
                                        // Add some spacing between the title and the subtitle
                                        Container(height: 5),
                                        // Add a subtitle widget
                                        Text(
                                          makale.makale_aciklama,
                                          style: TextStyle(
                                              color: Colors.grey[500],fontFamily: "Gentium",fontSize: 17
                                          ),
                                        ),
                                        // Add some spacing between the subtitle and the text
                                        Container(height: 10),
                                        // Add a text widget to display some text
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Yayım Tarihi: ${makale.tarih}",style:
                                            TextStyle(
                                                color: Colors.grey[700],fontFamily: "Gentium",fontSize: 16
                                            ),),
                                            Text(
                                              "Yazar: ${makale.yazar}",
                                              maxLines: 2,
                                              style:TextStyle(
                                                  color: Colors.grey[700],fontFamily: "Gentium",fontSize: 16
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                  );
                });
          }else if(snapshot.hasError){
            return const Center(
              child: Text("Hata var."),
            );
          }else{
            return const Center(
              child: Text("Data Yok"),
            );
          }
        },
      ),
    );
  }
}
