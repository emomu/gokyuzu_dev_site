import 'package:flutter/material.dart';
import 'package:gokyuzudevsite/sayfalar/makalelerimiz.dart';
import 'dart:html' as html;

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    Color hoverColor = Colors.white;

    return Scaffold(

      appBar: currentWidth > 600 ? AppBar(
        backgroundColor: Colors.black,
        title: GestureDetector(
            onTap: (){
              Navigator.pushReplacement((context), MaterialPageRoute(builder: (context) => const Anasayfa()));
            },
            child: Image.asset("resimler/logo2.jpg",width: 300,)),
        centerTitle: false,
        leading: const Text(" "),
        actions: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize:const Size(150, 10),
                  backgroundColor: Colors.black
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Anasayfa()));
              }, child: const Text("Uygulamalarımız",style: TextStyle(fontFamily:"Gentium",fontSize:16))),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                fixedSize: const Size(150,10),
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Makalelerimiz()));
              }, child:Row(
                children: [
                  const Text("Makalelerimiz",style: TextStyle(fontFamily:"Gentium",fontSize:16)),
                ],
              ))
        ],

      ) : null,
      backgroundColor: Colors.black,
      body: currentWidth < 600 ? SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: currentWidth/1,
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("H",style: TextStyle(fontSize: 124,fontFamily: 'Gentium',color: Colors.white),),
                            Text("e",style: TextStyle(fontSize: 124,fontFamily: 'Gentium',color: Color(0xFFFF0000)),),
                            Text("rkes",style: TextStyle(fontSize: 124,fontFamily: 'Gentium',color: Colors.white),),
                          ],
                        ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("İ",style: TextStyle(fontSize: 124,fontFamily: 'Gentium',color: Colors.white),),
                          Text("ç",style: TextStyle(fontSize: 124,fontFamily: 'Gentium',color: Color(0xFFFF0000)),),
                          Text("in",style: TextStyle(fontSize: 124,fontFamily: 'Gentium',color: Colors.white),),
                        ],
                      ),
                      const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Eğ",style: TextStyle(fontSize: 124,fontFamily: 'Gentium',color: Colors.white),),
                            Text("i",style: TextStyle(fontSize: 124,fontFamily: 'Gentium',color: Color(0xFFFF0000)),),
                            Text("tim",style: TextStyle(fontSize: 124,fontFamily: 'Gentium',color: Colors.white),),
                          ],
                        ),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              width: currentWidth/1.4,
                              child: const Text("       Herkes umut ederek dünyaya gelir. Umut eder yürümeyi öğreniriz, konuşmayı öğreniriz, yaşamayı öğreniriz. İşte biz kendi hedefleri uğruna bir şeyler öğrenmeyi umut edenler için eğitim uygulamaları oluşturuyor, makaleler yazıyoruz.",style: TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize: 30),))
                        ],),
                      const SizedBox(height: 50,),
                      currentWidth > 900 ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 300,
                            height: 350,
                            child: Card(
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(7)),
                                  side: BorderSide(
                                      width: 2.0,
                                      color: Colors.white
                                  )
                              ),
                              color: Colors.black,
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Uygul",style: TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize: 30),),
                                      Text("a",style: TextStyle(color: Color(0xFFFF0000),fontFamily: "Gentium",fontSize: 30),),
                                      Text("malarımız",style: TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize: 30),),

                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          width:  275,
                                          child: const Text("Sizin için öğrenmenizi hızlandıracak uygulamalar üretiyoruz. Bu sayede umut ettiğiniz hedeflere ulaşmanızı kolaylaştırıyoruz.",style: TextStyle(color: Colors.white,fontSize: 25,fontFamily: "Gentium"),)),
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 300,
                            height: 350,
                            child: Card(
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(7)),
                                  side: BorderSide(
                                      width: 2.0,
                                      color: Colors.white
                                  )
                              ),
                              color: Colors.black,
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Maka",style: TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize: 30),),
                                      Text("l",style: TextStyle(color: Color(0xFFFF0000),fontFamily: "Gentium",fontSize: 30),),
                                      Text("elerimiz",style: TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize: 30),),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          width:  275,
                                          child: const Text("Yayımladığımız makalelerle bilginize bilgi katıyoruz. Flutter alanında Türkçe makaleye ulaşmanızı kolaylaştırıyoruz.",style: TextStyle(color: Colors.white,fontSize: 25,fontFamily: "Gentium"),)),
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 300,
                            height: 350,
                            child: Card(
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(7)),
                                  side: BorderSide(
                                      width: 2.0,
                                      color: Colors.white
                                  )
                              ),
                              color: Colors.black,
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("İl",style: TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize: 30),),
                                      Text("e",style: TextStyle(color: Color(0xFFFF0000),fontFamily: "Gentium",fontSize: 30),),
                                      Text("tişim",style: TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize: 30),),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          width:  275,
                                          child: const Text("Uygulamaları kullanırken veya makaleleri okurken aklınızda kalan soru işaretleri için yardıma hazırız.",style: TextStyle(color: Colors.white,fontSize: 25,fontFamily: "Gentium"),)),
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ],
                      ) : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 300,
                            height: 350,
                            child: Card(
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(7)),
                                  side: BorderSide(
                                      width: 2.0,
                                      color: Colors.white
                                  )
                              ),
                              color: Colors.black,
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Uygul",style: TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize: 30),),
                                      Text("a",style: TextStyle(color: Color(0xFFFF0000),fontFamily: "Gentium",fontSize: 30),),
                                      Text("malarımız",style: TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize: 30),),

                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          width:  275,
                                          child: const Text("Sizin için öğrenmenizi hızlandıracak uygulamalar üretiyoruz. Bu sayede umut ettiğiniz hedeflere ulaşmanızı kolaylaştırıyoruz.",style: TextStyle(color: Colors.white,fontSize: 25,fontFamily: "Gentium"),)),
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 300,
                            height: 350,
                            child: Card(
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(7)),
                                  side: BorderSide(
                                      width: 2.0,
                                      color: Colors.white
                                  )
                              ),
                              color: Colors.black,
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Maka",style: TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize: 30),),
                                      Text("l",style: TextStyle(color: Color(0xFFFF0000),fontFamily: "Gentium",fontSize: 30),),
                                      Text("elerimiz",style: TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize: 30),),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          width:  275,
                                          child: const Text("Yayımladığımız makalelerle bilginize bilgi katıyoruz. Flutter alanında Türkçe makaleye ulaşmanızı kolaylaştırıyoruz.",style: TextStyle(color: Colors.white,fontSize: 25,fontFamily: "Gentium"),)),
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 300,
                            height: 350,
                            child: Card(
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(7)),
                                  side: BorderSide(
                                      width: 2.0,
                                      color: Colors.white
                                  )
                              ),
                              color: Colors.black,
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("İl",style: TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize: 30),),
                                      Text("e",style: TextStyle(color: Color(0xFFFF0000),fontFamily: "Gentium",fontSize: 30),),
                                      Text("tişim",style: TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize: 30),),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          width:  275,
                                          child: const Text("Uygulamaları kullanırken veya makaleleri okurken aklınızda kalan soru işaretleri için yardıma hazırız.",style: TextStyle(color: Colors.white,fontSize: 25,fontFamily: "Gentium"),)),
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("© 2024 | gokyuzu herkesindir",style: TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize:16 ),)
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ): SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: currentWidth/1,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: currentWidth/5),
                        child: const Row(
                          children: [
                            Text("H",style: TextStyle(fontSize: 124,fontFamily: 'Gentium',color: Colors.white),),
                            Text("e",style: TextStyle(fontSize: 124,fontFamily: 'Gentium',color: Color(0xFFFF0000)),),
                            Text("rkes",style: TextStyle(fontSize: 124,fontFamily: 'Gentium',color: Colors.white),),
                          ],
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("İ",style: TextStyle(fontSize: 124,fontFamily: 'Gentium',color: Colors.white),),
                          Text("ç",style: TextStyle(fontSize: 124,fontFamily: 'Gentium',color: Color(0xFFFF0000)),),
                          Text("in",style: TextStyle(fontSize: 124,fontFamily: 'Gentium',color: Colors.white),),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(right:currentWidth/5),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Eğ",style: TextStyle(fontSize: 124,fontFamily: 'Gentium',color: Colors.white),),
                            Text("i",style: TextStyle(fontSize: 124,fontFamily: 'Gentium',color: Color(0xFFFF0000)),),
                            Text("tim",style: TextStyle(fontSize: 124,fontFamily: 'Gentium',color: Colors.white),),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: currentWidth/1.4,
                              child: const Text("       Herkes umut ederek dünyaya gelir. Umut eder yürümeyi öğreniriz, konuşmayı öğreniriz, yaşamayı öğreniriz. İşte biz kendi hedefleri uğruna bir şeyler öğrenmeyi umut edenler için eğitim uygulamaları oluşturuyor, makaleler yazıyoruz.",style: TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize: 30),))
                        ],),
                      const SizedBox(height: 100,),
                      currentWidth > 900 ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 300,
                            height: 350,
                            child: Card(
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(7)),
                                  side: BorderSide(
                                      width: 2.0,
                                      color: Colors.white
                                  )
                              ),
                              color: Colors.black,
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Uygul",style: TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize: 30),),
                                      Text("a",style: TextStyle(color: Color(0xFFFF0000),fontFamily: "Gentium",fontSize: 30),),
                                      Text("malarımız",style: TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize: 30),),

                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          width:  275,
                                          child: const Text("Sizin için öğrenmenizi hızlandıracak uygulamalar üretiyoruz. Bu sayede umut ettiğiniz hedeflere ulaşmanızı kolaylaştırıyoruz.",style: TextStyle(color: Colors.white,fontSize: 25,fontFamily: "Gentium"),)),
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 300,
                            height: 350,
                            child: Card(
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(7)),
                                  side: BorderSide(
                                      width: 2.0,
                                      color: Colors.white
                                  )
                              ),
                              color: Colors.black,
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Maka",style: TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize: 30),),
                                      Text("l",style: TextStyle(color: Color(0xFFFF0000),fontFamily: "Gentium",fontSize: 30),),
                                      Text("elerimiz",style: TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize: 30),),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          width:  275,
                                          child: const Text("Yayımladığımız makalelerle bilginize bilgi katıyoruz. Flutter alanında Türkçe makaleye ulaşmanızı kolaylaştırıyoruz.",style: TextStyle(color: Colors.white,fontSize: 25,fontFamily: "Gentium"),)),
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 300,
                            height: 350,
                            child: Card(
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(7)),
                                  side: BorderSide(
                                      width: 2.0,
                                      color: Colors.white
                                  )
                              ),
                              color: Colors.black,
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("İl",style: TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize: 30),),
                                      Text("e",style: TextStyle(color: Color(0xFFFF0000),fontFamily: "Gentium",fontSize: 30),),
                                      Text("tişim",style: TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize: 30),),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          width:  275,
                                          child: const Text("Uygulamaları kullanırken veya makaleleri okurken aklınızda kalan soru işaretleri için yardıma hazırız.",style: TextStyle(color: Colors.white,fontSize: 25,fontFamily: "Gentium"),)),
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ],
                      ) : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 300,
                            height: 350,
                            child: Card(
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(7)),
                                  side: BorderSide(
                                      width: 2.0,
                                      color: Colors.white
                                  )
                              ),
                              color: Colors.black,
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Uygul",style: TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize: 30),),
                                      Text("a",style: TextStyle(color: Color(0xFFFF0000),fontFamily: "Gentium",fontSize: 30),),
                                      Text("malarımız",style: TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize: 30),),

                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          width:  275,
                                          child: const Text("Sizin için öğrenmenizi hızlandıracak uygulamalar üretiyoruz. Bu sayede umut ettiğiniz hedeflere ulaşmanızı kolaylaştırıyoruz.",style: TextStyle(color: Colors.white,fontSize: 25,fontFamily: "Gentium"),)),
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 300,
                            height: 350,
                            child: Card(
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(7)),
                                  side: BorderSide(
                                      width: 2.0,
                                      color: Colors.white
                                  )
                              ),
                              color: Colors.black,
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Maka",style: TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize: 30),),
                                      Text("l",style: TextStyle(color: Color(0xFFFF0000),fontFamily: "Gentium",fontSize: 30),),
                                      Text("elerimiz",style: TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize: 30),),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          width:  275,
                                          child: const Text("Yayımladığımız makalelerle bilginize bilgi katıyoruz. Flutter alanında Türkçe makaleye ulaşmanızı kolaylaştırıyoruz.",style: TextStyle(color: Colors.white,fontSize: 25,fontFamily: "Gentium"),)),
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 300,
                            height: 350,
                            child: Card(
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(7)),
                                  side: BorderSide(
                                      width: 2.0,
                                      color: Colors.white
                                  )
                              ),
                              color: Colors.black,
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("İl",style: TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize: 30),),
                                      Text("e",style: TextStyle(color: Color(0xFFFF0000),fontFamily: "Gentium",fontSize: 30),),
                                      Text("tişim",style: TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize: 30),),
                                    ],
                                  ),
                                   const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width:  275,
                                            child:const Text("Uygulamaları kullanırken veya makaleleri okurken aklınızda kalan soru işaretleri için yardıma hazırız.",style: TextStyle(color: Colors.white,fontSize: 25,fontFamily: "Gentium"),)),
                                      ],
                                    ),

                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                              onPressed: (){
                            html.window.location.href = "https://github.com/emomu";
                          }, child: Text("Github",style: TextStyle(color: hoverColor,fontFamily: "Gentium",fontSize:16 ))),
                          TextButton(onPressed: (){
                            html.window.location.href = "https://instagram.com/emiredenhan";
                          }, child: Text("Instagram",style: TextStyle(color: hoverColor,fontFamily: "Gentium",fontSize:16 ))),
                          TextButton(onPressed: (){
                            html.window.location.href = "https://github.com/emomu";
                          }, child: Text("X",style: TextStyle(color: hoverColor,fontFamily: "Gentium",fontSize:16 ))),
                          TextButton(onPressed: (){
                            html.window.location.href = "https://www.linkedin.com/in/emirhan-soylu-5b1941251/";
                          }, child: Text("Linked-in",style: TextStyle(color: hoverColor,fontFamily: "Gentium",fontSize:16 ))),
                        ],

                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("© 2024 | gokyuzu herkesindir",style: TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize:16 ),)
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}
