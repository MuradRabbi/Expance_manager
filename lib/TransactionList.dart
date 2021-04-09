import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'Models/Transaction.dart';





class TransacTionList extends StatelessWidget {

  final List <Transaction> transactions;

  TransacTionList(this.transactions);

  @override


  Widget build(BuildContext context) {
    return Container(
      height: 350,
      color: Colors.red,

         child: ListView.builder(
           itemCount: transactions.length,
           itemBuilder: (context , index){
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
                       child: Text("\$${transactions[index].amount.toStringAsFixed(2)}", style: TextStyle(color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold),),
                     ),
                     SizedBox(width:10),
                     Container(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Container(
                             child: Text(transactions[index].title ,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                           ),
                           SizedBox(height:10),
                           Container(
                             child: Text(DateFormat.yMMMMd().format(transactions[index].date), style:TextStyle(color:Colors.grey)),
                           ),
                         ] ,
                       ),
                     )
                   ],
                 )
             );
           },
         )


    );
  }
}
