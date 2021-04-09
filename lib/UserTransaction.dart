import 'package:flutter/material.dart';

import 'Models/Transaction.dart';
import 'NewTransation.dart';
import 'TransactionList.dart';




class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {

  final List<Transaction> _userTransactions = [
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

  void _addTransaction( String txTitle , double txAmount){
    final newTx = Transaction(id: DateTime.now().toString(), title: txTitle, amount: txAmount, date:DateTime.now());

    setState(() {
      _userTransactions.add(newTx);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addTransaction),
        TransacTionList(_userTransactions)
      ],
    );
  }
}
