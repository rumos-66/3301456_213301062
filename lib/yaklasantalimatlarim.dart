import 'package:flutter/material.dart';

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
      title: 'APP',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePagee(title: 'ÜNAL BANK'),
    );
  }
}

class MyHomePagee extends StatefulWidget {
  const MyHomePagee({super.key, required this.title});

  final String title;

  @override
  State<MyHomePagee> createState() => _MyHomePageeState();
}

class _MyHomePageeState extends State<MyHomePagee> {
  int _counter = 0;
  int sayac = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void sayaciartir() {
    setState(() {
      sayac++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStylestyle =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.black45,
        title: Center(child: Text('ÜNAL BANK ')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox.fromSize(),
            const Text(
              ' YAKLAŞAN TALİMATLARIM ',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 100),
            ElevatedButton(
              style: buttonStylestyle,
              onPressed: () {},
              child: const Text('Fatura Ödeme'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: buttonStylestyle,
              onPressed: () {},
              child: const Text('Otomatik Ödeme'),
            ),
          ],
        ),
      ),
    );
  }
}
