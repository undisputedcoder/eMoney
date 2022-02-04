import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final List<String> entries = <String>['Crypto.com', 'Binance', 'USD Coin', 'TrueUSD'];
  final List<String> price = <String>['60.41 CRO', '0.98 BNB', '460.82 USDC', '10.23 TUSD'];
  final List<num> percent = <num>[5.56, -0.76, 2.90, 0.06];
  final List<num> earnings = <num>[15.73, 469.99, 347.04, 7.76];
  final List<String> images = <String>['crypto.png', 'binance.png', 'usd.png', 'trueusd.png'];

  static const double ICONSIZE = 35.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget> [
              Center(
                child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: Text("Total Balance".toUpperCase(),
                          style: TextStyle(
                              fontSize: 16.0
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("\$ ",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          Text("21,236.44",
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
                      )
                    ]
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  color: Colors.redAccent,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Card(
                  child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(8),
                    itemCount: entries.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 50,
                        child: ListTile(
                          leading: Image(
                            width: ICONSIZE,
                            height: ICONSIZE,
                            image: AssetImage('assets/${images[index]}'),
                          ),
                          title: Row(
                            children: [
                              Text(entries[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              Text("\$${earnings[index]}",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ],
                          ),
                          subtitle: Text("${price[index]}"),
                          trailing: Text('${percent[index]}%',
                            style: TextStyle(
                                color: percent[index] < 0 ? Colors.red : Colors.green,
                                fontWeight: FontWeight.w500,
                                fontSize: 16
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) => const Divider(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
