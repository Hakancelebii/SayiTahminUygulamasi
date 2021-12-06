import 'package:flutter/material.dart';
import 'package:sayitahminler/main.dart';

class SonucEkrani extends StatefulWidget {
  bool sonuc ;

  SonucEkrani({required this.sonuc});



  @override
  _SonucEkraniState createState() => _SonucEkraniState();
}

class _SonucEkraniState extends State<SonucEkrani> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SONUÇ SAYFASI"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            widget.sonuc ? Image.asset("resimler/mutlu_resim.png") :Image.asset("resimler/uzgun_resim.png") ,
            Text( widget.sonuc? "KAZANDINIZ" : "KAYBETTİNİZ" ,style: TextStyle(color: Colors.black54,fontSize: 36),),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(onPressed: (){
                Navigator.pop(context);


              }, child: Text("TEKRAR DENE")),
            )





          ],
        ),
      ),

    );
  }
}
