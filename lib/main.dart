import 'package:flutter/material.dart';

import 'Models/Transaction.dart';
import 'ThreeDDraweScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: ThreeDDraweScreen(),
    );
  }
}

 class MyHomePage extends StatelessWidget {


  final List<Transaction> transactions = [
     Transaction(
       id: "1",
       title: "New Shoes",
       amount: 69.99,
       date: DateTime.now()
     ),

    Transaction(
        id: "2",
        title: "New Shirts",
        amount: 19.99,
        date: DateTime.now()
    )
  ];
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("Flutter App"),

       ),

       body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Card(child: Text("CHART !"),),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: transactions.map((tx){
               return Card(
                 child: Row(
                   children: [
                     Container(
                       margin:EdgeInsets.symmetric(horizontal:10, vertical: 15),
                       padding: EdgeInsets.all(10),
                       decoration: BoxDecoration(
                         border: Border.all(
                           color:Colors.blue,
                           width: 3
                         )
                       ),
                       child: Text(tx.amount.toString() , style: TextStyle(color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold),),
                     ),
                     SizedBox(width:10),
                     Container(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Container(
                             child: Text(tx.title ,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                           ),
                           SizedBox(height:10),
                           Container(
                             child: Text(tx.date.toString(), style:TextStyle(color:Colors.grey)),
                           ),
                         ],
                       ),
                     )
                   ],
                 )
               );
             }).toList(),
           )

         ],
       ),
     );
   }
 }

