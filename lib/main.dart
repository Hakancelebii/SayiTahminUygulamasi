import 'package:flutter/material.dart';
import 'package:sayitahminler/tahin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {


  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnaSayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("TAHMİN OYUNU" ,style: TextStyle(color: Colors.black54,fontSize: 36),),
            Image.asset("resimler/zar_resim.png"),
            SizedBox(

              width: 200,
              height: 50,

              child: ElevatedButton(onPressed: (){

                Navigator.push(context,MaterialPageRoute(builder: (context)=>TahminEkrani()));


              }, child: Text("OYUN BAŞLA") ),
            )
            


          ],
        ),
      ),

    );
  }
}
