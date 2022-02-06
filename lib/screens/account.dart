import 'package:app/widgets/balance.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Column(
                children: [
                  Column(
                    children: [
                      Balance(
                        balance: "21,236.44",
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            color: Colors.greenAccent
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(9.0, 4.0, 9.0, 4.0),
                            child: Text("+\$507.13", style: TextStyle(fontSize: 16)),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Card(
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      children: [
                        ListTile(
                          leading: Wrap(
                            children: [
                              Text("Crypto Wallet"),
                              Icon(Icons.arrow_right)
                            ],
                          ),
                          title: Align(alignment: Alignment.centerRight, child: Text("\$5,219.83")),
                          trailing: Text("+8.40%", style: TextStyle(color: Colors.green)),
                        ),
                        ListTile(
                          leading: Text("Crypto Earn"),
                          title: Align(alignment: Alignment.centerRight, child: Text("\$612.73")),
                          trailing: Text("+9.51%", style: TextStyle(color: Colors.green)),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Text("Fiat Wallet"),
                      title: Align(alignment: Alignment.centerRight, child: Text("\$2.52")),
                      trailing: Text("          --"),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Text("Crypto.com Visa Card"),
                      title: Align(alignment: Alignment.centerRight, child: Text("\$43.83")),
                      trailing: Text("          --"),
                    ),
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}
