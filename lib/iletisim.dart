import 'package:flutter/material.dart';

class Iletisim extends StatefulWidget {
  const Iletisim({Key? key}) : super(key: key);

  @override
  State<Iletisim> createState() => _IletisimState();
}

class _IletisimState extends State<Iletisim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KİŞİSEL BİLGİLER'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Merhaba Ben Rumeysa ,Sevgili Ünal Bank Kullanıcıları. ')


            ),
            Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Selçuk Üniversitesi Bilgisayar Mühendisiliği  Öğrencisiyim. ')


            ),
            Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Kılavuzu para olana her kapı açıktır.(Shakespeare):)  ')


            ),

            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(' E-posta= rumos.unal.66@gmail.com'),

            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Telefon Numarası=444 0444'),

            ),

            Padding(
              padding: EdgeInsets.all(8.0),

              child: Text( 'Daha fazla bilgi almak için web sitemizden yararlanabilirsiniz'),


            ),
            Padding(
              padding: EdgeInsets.all(8.0),

              child: Text( 'İYİ GÜNLER'),


            ),

          ],
        ),
      ),
    );
  }
}
