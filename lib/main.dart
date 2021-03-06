import 'package:flutter/material.dart';
import './transaction.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transaction =[
    Transaction(
      id: '1',
      title: 'shoe',
      amount: 69,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'dress',
      amount: 90,
      date: DateTime.now(),
    ),
    Transaction(
      id: '3',
      title: 'bag',
      amount: 100,
      date: DateTime.now(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget>[

          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text('CHART'),
              elevation:5,
            ),
          ),
         Column(children:transaction.map((tx){
           return Card(
             child: Row(
               children:<Widget>[
                 Container(
                   margin:EdgeInsets.symmetric(
                 vertical:10,
               horizontal: 15,
             ),
             padding: EdgeInsets.all(10),
             decoration: BoxDecoration(
               border: Border.all(
                 color: Colors.black,
                 width: 2
               ),

             ),
             child:Text(tx.amount.toString(),
           ),
           ),
           Column(
           children:<Widget>[
             Text(tx.title),
             Text(tx.date.toString(),
           ),
           ],
           ),
],),);
         }).toList(),
         ),
         ],
      ),



      );

  }
}
