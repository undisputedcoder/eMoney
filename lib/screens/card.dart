import 'package:app/widgets/balance.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  final List<String> transactions = ['AUD Deposit', 'TUSD → AUD', 'AUD Deposit', 'Netflix.com'];
  final List<num> amount = [15.00, 37.82, 5.00, 13.99];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(11.0),
                child: Text("Available for card".toUpperCase(),
                  style: TextStyle(
                      fontSize: 16.0
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 6.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("\$ ",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    Text('43.83',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    Text(" AUD",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70.0, right: 70.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue[100]), child: IconButton(onPressed: () {print('top up pressed');}, icon: Icon(Icons.add_circle_outline, color: Colors.blueAccent))),
                    Text("Top Up"),
                  ],
                ),
                Column(
                  children: [
                    Container(decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue[100]), child: IconButton(onPressed: () {print('send pressed');}, icon: Icon(Icons.send, color: Colors.blueAccent))),
                    Text("Send"),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.attach_money_sharp),
                title: Text("AUD Dollar", style: TextStyle(fontWeight: FontWeight.w500)),
                trailing: Text("\$43.83"),
              ),
            ),
          ),
          SizedBox(
            height: 30,
            child: ListTile(
              leading: Text("Year-to-date Fees"),
              trailing: Text("\$0.00"),
            ),
          ),
          SizedBox(
            height: 50,
            child: ListTile(
              leading: Text("Last Month's Fees"),
              trailing: Text("\$0.00"),
            ),
          ),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                      child: Text("Tue, Jun 29".toUpperCase())
                  ),
                ),
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: transactions.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: index == 3 ?  Container(width: 35, height: 35, decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue) ,child: Icon(Icons.shopping_bag_outlined, color: Colors.white)) : Container(width: 35, height: 35, decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.greenAccent), child: Icon(Icons.arrow_circle_down_sharp, color: Colors.white)),
                      title: Text(transactions[index], style: TextStyle(fontWeight: FontWeight.w500),),
                      trailing: Text("+ \$${amount[index]} AUD", style: TextStyle(color: index == 3 ? Colors.black : Colors.greenAccent[400])),
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
