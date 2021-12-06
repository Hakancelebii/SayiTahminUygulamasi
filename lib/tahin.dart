import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sayitahminler/sonuc.dart';

class TahminEkrani extends StatefulWidget {
  const TahminEkrani({Key? key}) : super(key: key);

  @override
  _TahminEkraniState createState() => _TahminEkraniState();
}

class _TahminEkraniState extends State<TahminEkrani> {
  var tftahmin=TextEditingController();
  int rastgelesayi=0;
  int kalanhak=5;
  String yonlendirme ="";

  @override
  void initState() {
    super.initState();
    rastgelesayi=Random().nextInt(100);
    print("Sayımız : $rastgelesayi");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TAHMİN SAYFASI"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("KALAN HAK:$kalanhak" ,style: TextStyle(color: Colors.pinkAccent,fontSize: 30),),
            Text("YARDIM:$yonlendirme" ,style: TextStyle(color: Colors.black54,fontSize: 24),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: tftahmin,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),

                  labelText: "Tahmin",
                ),
              ),
            ),
            SizedBox(
              width: 200,
              height: 50,

              child: ElevatedButton( style: ElevatedButton.styleFrom(
                primary: Colors.redAccent,

              ),
                  onPressed: (){
                setState(() {
                  kalanhak=kalanhak-1;
                });

                int tahmin=int.parse(tftahmin.text);

                if(tahmin == rastgelesayi){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>SonucEkrani(sonuc: true,)));
                  return;
                }
                if(tahmin > rastgelesayi){
                  yonlendirme="Sayıyı Küçültünüz";
                }
                if(tahmin < rastgelesayi){
                  yonlendirme="Sayıyı Büyültünüz";
                }
                if (kalanhak==0){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>SonucEkrani(sonuc: false,)));

                }
                tftahmin.text="";



              }, child: Text("TAHMİN ET",style: TextStyle(color: Colors.white),)),
            ),




          ],
        ),
      ),

    );;
  }
}
