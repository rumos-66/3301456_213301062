import 'package:flutter/material.dart';
import 'package:unalbank/yaklasantalimatlarim.dart';
import 'altindoviz.dart';
import 'iletisim.dart';
import 'kumbaramatik.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red)
            .copyWith(secondary: Colors.red),
      ),
      debugShowCheckedModeBanner: false,
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('ANASAYFA')),
      ),
      body: Column(

        children: [
          SizedBox(height: 100),
          FilledButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder:(context)=>MyHomePage(title: 'Kumbaramatik',)),);

            },
            child: const Text('Kumbaramatik'),
          ),
          SizedBox(height: 100),

          FilledButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder:(context)=>MyHomePagee(title:'Yaklaşan Talimatlarım')),);

            },
            child: const Text('Yaklaşan Talimatlarım'),
          ),
          SizedBox(height: 100),

          FilledButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder:(context)=>Mygoldd(title:'Altın Döviz Verileri')),);

            },
            child: const Text('Altın- Döviz Verileri'),

          ),
          SizedBox(height: 100),
          Center(

            child: Text(" Hoşgeldiniz Değerli Müşterilerimiz"),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,

          children: <Widget>[
            Icon(Icons.home),
            UserAccountsDrawerHeader(
              accountName:Text('ÜNAL BANK'),
              accountEmail:Text('1966'),

            ),

            ListTile(
              title: Text('ANASAYFA'),
              leading: Icon(Icons.home),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('KİŞİSEL BİLGİLER'),
              leading: Icon(Icons.person),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder:(context)=>Iletisim()),);
              },
            ),
            ListTile(
              title: Text('ÇIKIŞ YAP'),
              leading: Icon(Icons.remove_circle),

              onTap: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
