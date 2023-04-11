import 'package:flutter/material.dart';

import 'altindoviz.dart';




class Hakkindaa extends StatefulWidget {
  const Hakkindaa({Key? key}) : super(key: key);

  @override
  State<Hakkindaa> createState() => _HakkindaaState();
}

class _HakkindaaState extends State<Hakkindaa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hakkında'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Bu Uygulama Rumeysa Ünal Tarafından Yapılmıştır:'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed:(){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>MyApp()),);

              }, child:Text('Giriş ekranına dön')),
            ),
          ],),
      ),
    );
  }
}
