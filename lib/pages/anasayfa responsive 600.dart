import 'package:flutter/material.dart';

class Anasayfa600 extends StatefulWidget {
  const Anasayfa600({super.key});

  @override
  State<Anasayfa600> createState() => _Anasayfa600State();
}

class _Anasayfa600State extends State<Anasayfa600> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: currentWidth/1,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                            text: const TextSpan(
                                text : "H",
                                style: TextStyle(fontSize: 124,fontFamily: "Gentium",color: Colors.white),
                                children : <TextSpan>[
                                  TextSpan(text: "e",style: TextStyle(fontSize: 124,fontFamily: "Gentium",color: Color(0xFFFF0000)),),
                                  TextSpan(text: "rkes",style: TextStyle(fontSize: 124,fontFamily: "Gentium",color: Colors.white),),
                                ]
                            )
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                            text: const TextSpan(
                                text : "İ",
                                style: TextStyle(fontSize: 124,fontFamily: "Gentium",color: Colors.white),
                                children : <TextSpan>[
                                  TextSpan(text: "ç",style: TextStyle(fontSize: 124,fontFamily: "Gentium",color: Color(0xFFFF0000)),),
                                  TextSpan(text: "in",style: TextStyle(fontSize: 124,fontFamily: "Gentium",color: Colors.white),),
                                ]
                            )
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                            text:const TextSpan(
                                text : "E",
                                style: TextStyle(fontSize: 124,fontFamily: "Gentium",color: Colors.white),
                                children : <TextSpan>[
                                  TextSpan(text: "ğ",style: TextStyle(fontSize: 124,fontFamily: "Gentium",color: Color(0xFFFF0000)),),
                                  TextSpan(text: "itim",style: TextStyle(fontSize: 124,fontFamily: "Gentium",color: Colors.white),),
                                ]
                            )
                        )
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
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RichText(
                                      text: const TextSpan(
                                          text: "Uygul",
                                          style: TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize: 30),
                                          children: <TextSpan>[
                                            TextSpan(text:"a",style:TextStyle(color: Color(0xFFFF0000),fontFamily: "Gentium",fontSize: 30)),
                                            TextSpan(text:"malarımız",style:TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize: 30)),
                                          ]
                                      ),

                                    )

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
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RichText(
                                      text: const TextSpan(
                                          text: "Maka",
                                          style: TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize: 30),
                                          children: <TextSpan>[
                                            TextSpan(text:"l",style:TextStyle(color: Color(0xFFFF0000),fontFamily: "Gentium",fontSize: 30)),
                                            TextSpan(text:"elerimiz",style:TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize: 30)),
                                          ]
                                      ),

                                    )
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
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RichText(
                                      text: const TextSpan(
                                          text: "İl",
                                          style: TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize: 30),
                                          children: <TextSpan>[
                                            TextSpan(text:"e",style:TextStyle(color: Color(0xFFFF0000),fontFamily: "Gentium",fontSize: 30)),
                                            TextSpan(text:"tişim",style:TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize: 30)),
                                          ]
                                      ),

                                    )
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
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RichText(
                                      text: const TextSpan(
                                          text: "Uygul",
                                          style: TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize: 30),
                                          children: <TextSpan>[
                                            TextSpan(text:"a",style:TextStyle(color: Color(0xFFFF0000),fontFamily: "Gentium",fontSize: 30)),
                                            TextSpan(text:"malarımız",style:TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize: 30)),
                                          ]
                                      ),

                                    )

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
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RichText(
                                      text: const TextSpan(
                                          text: "Maka",
                                          style: TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize: 30),
                                          children: <TextSpan>[
                                            TextSpan(text:"l",style:TextStyle(color: Color(0xFFFF0000),fontFamily: "Gentium",fontSize: 30)),
                                            TextSpan(text:"elerimiz",style:TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize: 30)),
                                          ]
                                      ),

                                    )
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
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RichText(
                                      text: const TextSpan(
                                          text: "İl",
                                          style: TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize: 30),
                                          children: <TextSpan>[
                                            TextSpan(text:"e",style:TextStyle(color: Color(0xFFFF0000),fontFamily: "Gentium",fontSize: 30)),
                                            TextSpan(text:"tişim",style:TextStyle(color: Colors.white,fontFamily: "Gentium",fontSize: 30)),
                                          ]
                                      ),

                                    )
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
    );
  }
}
