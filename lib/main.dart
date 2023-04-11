import 'package:flutter/material.dart';
import 'anasayfaa.dart';
import 'hakkkindaaa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ÜNAL BANK',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.white,
      ),
      home: const MyHomePage(title: 'ÜNAL BANK'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();
  final _formKey1 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Widget _LoginHome = Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/images.jpg'),
          SizedBox(height: 10.0,),
          const Text('GİRİŞ EKRANI', style: TextStyle(fontSize: 30),),

          SizedBox(height: 10.0,),


          Form(
            key: _formKey,
            child: TextFormField(
              obscureText: false, //yazdıklarımız gözüksün diye
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(  //köşelere boyut verdik
                  20.0,
                  15,
                  20,
                  15,
                ),
                hintText: 'Kullanıcı Adınızı Giriniz(rümtektek12)',
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Boş bırakmayınız';
                }
                if (value != 'rümtektek12') {
                  return 'Kullanıcı adı yanlış girildi:(';
                }
                return null;
              },
            ),
          ),
          Form(
            key: _formKey1,
            child: TextFormField(
              obscureText: true, //yazdıklarımız gözükmesin diye
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(
                  20.0,
                  15,
                  20,
                  15,
                ),
                hintText: 'Şifrenizi Giriniz(662001)',//köşelere boyut verdik
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Boş bırakmayınız';
                }
                if (value != '662001') {
                  return 'Şifre yanlış girildi:(';
                }
                return null;
              },
            ),
          ),
          Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.red,
            child: MaterialButton(
              minWidth: MediaQuery
                  .of(context)
                  .size
                  .width,
              padding: EdgeInsets.fromLTRB(
                20,
                15,
                10,
                15,
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  if (_formKey1.currentState!.validate()) {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Anasayfa(),));
                  }
                }
              },
              child: Text('Giriş yap'),
            ),


          ),
          SizedBox(height: 15.0),
          Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.red,
            child: MaterialButton(
              minWidth: MediaQuery
                  .of(context)
                  .size
                  .width,
              padding: EdgeInsets.fromLTRB(
                20,
                15,
                10,
                15,
              ),
              onPressed: () {},
              child: Text('Şifreyı Sıfırla'),
            ),


          ),
          SizedBox(height: 15.0),
          Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.red,
            child: MaterialButton(
              minWidth: MediaQuery
                  .of(context)
                  .size
                  .width,
              padding: EdgeInsets.fromLTRB(
                20,
                15,
                10,
                15,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Hakkindaa()),
                );
              },
              child: Text('Hakkında'),
            ),


          ),
          SizedBox(height: 15.0),

        ],
      ),
    );

    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'ÜNAL BANK',
              style: TextStyle(fontSize: 20.0, color: Colors.white),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: _LoginHome
    );
  }
}
