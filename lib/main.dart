import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:personal_expance_app/NewTransation.dart';
import 'package:personal_expance_app/TransactionList.dart';
import 'package:personal_expance_app/UserTransaction.dart';
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
      home: MyHomePage(),
    );
  }
}

 class MyHomePage extends StatelessWidget {






   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("Flutter App"),

       ),

       body:SingleChildScrollView(
         child:  Column(
           // mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: [
             Card(child: Text("CHART !"),),
             UserTransaction()

           ],
         ),
       )
     );
   }
 }

