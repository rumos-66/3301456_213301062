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
      title: 'ÜNAL BANK',
      theme: ThemeData(

        primarySwatch: Colors.red,
      ),
      home: const Mygoldd(title: 'ÜNAL BANK'),
    );
  }
}

class Mygoldd extends StatefulWidget {
  const Mygoldd({super.key, required this.title});



  final String title;

  @override
  State<Mygoldd> createState() => _MygolddState();
}

class _MygolddState extends State<Mygoldd> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(

          title: Center(child: Text('ÜNAL BANK ')),
        ),
        body:Center(
          child: Column(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.black45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text('ALIŞ FİYATI'),
                          Icon(Icons.euro),

                          Container(
                            child: Center(child: Text('20.3')),
                            margin: const EdgeInsets.all(10.0),
                            color: Colors.black26,
                            width: 70.0,
                            height: 70.0,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text('SATIŞ FİYATI'),
                          Icon(Icons.euro),
                          Container(
                            child: Center(child: Text('21,7')),
                            margin: const EdgeInsets.all(10.0),
                            color: Colors.black26,
                            width: 70.0,
                            height: 70.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Spacer(),

              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.amberAccent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Column(
                        children: [
                          Text('ALIŞ FİYATI'),
                          Icon(Icons.account_balance_sharp),
                          Container(
                            child: Center(child: Text('1200')),
                            margin: const EdgeInsets.all(10.0),
                            color: Colors.black26,
                            width: 70.0,
                            height: 70.0,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text('SATIŞ FİYATI'),
                          Icon(Icons.account_balance_sharp),
                          Container(
                            child: Center(child: Text('1250')),
                            margin: const EdgeInsets.all(10.0),
                            color: Colors.black26,
                            width: 70.0,
                            height: 70.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),

              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.black26,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text('ALIŞ FİYATI'),
                          Icon(Icons.attach_money_outlined),
                          Container(
                            child: Center(child: Text('19.8')),
                            margin: const EdgeInsets.all(10.0),
                            color: Colors.black26,
                            width: 70.0,
                            height: 70.0,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text('SATIŞ FİYATI'),
                          Icon(Icons.attach_money_outlined),
                          Container(
                            child: Center(child: Text('20,6')),
                            margin: const EdgeInsets.all(10.0),
                            color: Colors.black26,
                            width: 70.0,
                            height: 70.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        )

    );
  }
}
