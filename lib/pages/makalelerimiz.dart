import 'package:flutter/material.dart';
import 'package:gokyuzudevsite/components/drawer.dart';
import 'package:gokyuzudevsite/repo/makaleModel.dart';
import 'package:gokyuzudevsite/service/makale_service.dart';
import 'dart:html' as html;

class Makalelerimiz extends StatefulWidget {
  const Makalelerimiz({super.key});

  @override
  State<Makalelerimiz> createState() => _MakalelerimizState();
}

class _MakalelerimizState extends State<Makalelerimiz> {
  MakaleService _service = MakaleService();
  bool? isLoading;
  List<MakaleModelData?> filteredMakaleler = [];
  List<MakaleModelData?> makaleler = [];
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _fetchMakaleler();
  }

  void _fetchMakaleler() {
    _service.fetchUsers().then((value) {
      if (value != null && value.data != null) {
        setState(() {
          makaleler = value.data!;
          filteredMakaleler = makaleler; // Başlangıçta tüm makaleleri göster
          isLoading = true;
        });
      } else {
        setState(() {
          isLoading = false;
        });
      }
    });
  }

  void _filterMakaleler(String query) {
    // Eğer arama sorgusu boşsa, tüm makaleleri göster
    if (query.isEmpty) {
      setState(() {
        filteredMakaleler = makaleler;
      });
    } else {
      // Arama sorgusuna göre makaleleri filtrele
      List<MakaleModelData?> tmpList = [];
      for (var makale in makaleler) {
        if (makale!.makaleAdi!.toLowerCase().contains(query.toLowerCase()) ||
            makale.yazar!.toLowerCase().contains(query.toLowerCase()) ||
            makale.aciklama!.toLowerCase().contains(query.toLowerCase())) {
          tmpList.add(makale);
        }
      }
      setState(() {
        filteredMakaleler = tmpList;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: screenWidth > 600
          ? AppBar(
              backgroundColor: Colors.black,
              title: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        (context),
                        MaterialPageRoute(
                            builder: (context) => const MyHomePage(
                                title: "Gokyuzu Development")));
                  },
                  child: Image.asset(
                    "assets/images/logo2.jpg",
                    width: 300,
                  )),
              centerTitle: false,
              leading: const Text(" "),
              actions: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(150, 10),
                        backgroundColor: Colors.black),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyHomePage(
                                  title: "Gokyuzu Development")));
                    },
                    child: const Text("Uygulamalarımız",
                        style: TextStyle(fontFamily: "Gentium", fontSize: 16))),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      fixedSize: const Size(150, 10),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Makalelerimiz()));
                    },
                    child: const Text("Makalelerimiz",
                        style: TextStyle(fontFamily: "Gentium", fontSize: 16)))
              ],
            )
          : null,
      body: isLoading == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : isLoading == true
              ? Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: screenWidth / 50,
                      ),
                      SizedBox(
                        width: 600,
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          controller: searchController,
                          decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2.0, color: Colors.white)),
                              disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2.0, color: Colors.white)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2.0, color: Colors.white)),
                              labelText: 'Makale Ara',
                              labelStyle: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Gentium",
                                  fontWeight: FontWeight.bold,
                                  color: Color(0x99FF0000)),
                              prefixIcon: Icon(Icons.search),
                              prefixIconColor: Color(0x90FF0000)),
                          onChanged: (value) {
                            _filterMakaleler(value);
                          },
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: filteredMakaleler.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                html.window.location.href =
                                    "https://gokyuzudev.com.tr/makaleler/${filteredMakaleler[index]!.id}/${filteredMakaleler[index]!.id}.html";
                              },
                              child: screenWidth > 600
                                  ? Padding(
                                      padding: EdgeInsets.only(
                                          top: 10.0,
                                          right: screenWidth / 4.6,
                                          left: screenWidth / 4.6),
                                      child: SizedBox(
                                        width: 200,
                                        child: Card(
                                          color: Colors.black,
                                          shape: RoundedRectangleBorder(
                                            side: const BorderSide(
                                                color: Colors.white,
                                                width: 1.0),
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(15),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Expanded(
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: <Widget>[
                                                          // Add some spacing between the top of the card and the title
                                                          Container(height: 5),
                                                          // Add a title widget
                                                          Text(
                                                            "${filteredMakaleler[index]!.makaleAdi}",
                                                            style: const TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                fontFamily:
                                                                    "Gentium",
                                                                fontSize: 22),
                                                          ),
                                                          // Add some spacing between the title and the subtitle
                                                          Container(height: 5),
                                                          // Add a subtitle widget
                                                          Text(
                                                            "${filteredMakaleler[index]!.aciklama}",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .grey[500],
                                                                fontFamily:
                                                                    "Gentium",
                                                                fontSize: 17),
                                                          ),
                                                          // Add some spacing between the subtitle and the text
                                                          Container(height: 10),
                                                          // Add a text widget to display some text
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(
                                                                "Yayım Tarihi: ${makaleler[index]!.yayinTarihi}",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                            .grey[
                                                                        700],
                                                                    fontFamily:
                                                                        "Gentium",
                                                                    fontSize:
                                                                        16),
                                                              ),
                                                              Text(
                                                                "Yazar: ${filteredMakaleler[index]!.yazar}",
                                                                maxLines: 2,
                                                                style: TextStyle(
                                                                    color: Colors
                                                                            .grey[
                                                                        700],
                                                                    fontFamily:
                                                                        "Gentium",
                                                                    fontSize:
                                                                        16),
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
                                      ),
                                    )
                                  : Card(
                                      color: Colors.black,
                                      // Define the shape of the card
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          side: const BorderSide(
                                              width: 1.0, color: Colors.white)),
                                      // Define how the card's content should be clipped
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      // Define the child widget of the card
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(15),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: <Widget>[
                                                      // Add some spacing between the top of the card and the title
                                                      Container(height: 5),
                                                      // Add a title widget
                                                      Text(
                                                        "${filteredMakaleler[index]!.makaleAdi}",
                                                        style: const TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            fontFamily:
                                                                "Gentium",
                                                            fontSize: 22),
                                                      ),
                                                      // Add some spacing between the title and the subtitle
                                                      Container(height: 5),
                                                      // Add a subtitle widget
                                                      Text(
                                                        "${filteredMakaleler[index]!.aciklama}",
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[500],
                                                            fontFamily:
                                                                "Gentium",
                                                            fontSize: 17),
                                                      ),
                                                      // Add some spacing between the subtitle and the text
                                                      Container(height: 10),
                                                      // Add a text widget to display some text
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            "Yayım Tarihi: ${filteredMakaleler[index]!.yayinTarihi}",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .grey[700],
                                                                fontFamily:
                                                                    "Gentium",
                                                                fontSize: 16),
                                                          ),
                                                          Text(
                                                            "Yazar: ${filteredMakaleler[index]!.yazar}",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .grey[700],
                                                                fontFamily:
                                                                    "Gentium",
                                                                fontSize: 16),
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
                          },
                        ),
                      ),
                    ],
                  ),
                )
              : const Center(
                  child: Text("Bir sorun oluştu.."),
                ),
    );
  }
}
