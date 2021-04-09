import 'package:flutter/material.dart';




class NewTransaction extends StatelessWidget {

  final Function addTx;

  NewTransaction(this.addTx);

  final TextEditingController titleController = TextEditingController();
  final TextEditingController amountController = TextEditingController();


  void submitData(){
    final enterTitle = titleController.text;
    final enterAmount = double.parse(amountController.text);
    if (enterTitle.isEmpty || enterAmount <= 0){
      return;
    }
    addTx(

      enterTitle,
      enterAmount
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5.0,
        child:Container(
          padding: EdgeInsets.all(10),
          child:  Column(
            children: [
              TextField(
                controller: titleController,
                keyboardType: TextInputType.text,
                onSubmitted:(_)=> submitData,
                decoration: InputDecoration(
                    labelText: "Title"
                ),
              ),
              TextField(
                controller: amountController,
                keyboardType: TextInputType.number,
                onSubmitted: (_) => submitData,
                decoration: InputDecoration(

                    labelText: "Amount"
                ),
              ),
              SizedBox(height:10),
              InkWell(
                onTap: submitData,
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.blue,
                  child: Text("Add Transaction", style:TextStyle(color:Colors.white)),
                ),
              )
            ],
          ),
        )
    );
  }
}
