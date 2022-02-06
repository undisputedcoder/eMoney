import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final List<String> entries = <String>['Binance Coin', 'Crypto.com', 'MCO', 'Bitcoin'];
  final List<String> price = <String>['BNB', 'CRO', 'MCO', 'BTC'];
  final List<num> percent = <num>[5.56, -0.76, -1.64, -2.04];
  final List<num> earnings = <num>[13.40, 0.08729, 4.17, 7613.69];
  final List<String> images = <String>['binance.png', 'crypto.png', 'mco.png', 'bitcoin.png'];
  final List<String> topGainers = ['Kyber Network', 'THETA'];
  final List<String> symbol = <String>['KNC', 'THETA'];
  final List<num> topGainersPrice = [1.07, 0.08];
  final List<num> topGainersPercent = [12.71, 9.53];
  final List<String> topGainersimages = ['kyber.png', 'theta.png'];

  static const double ICONSIZE = 30.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget> [
              Column(
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
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget> [
                        Container(width: 100, child: ElevatedButton(onPressed: () { print("trade pressed"); }, child: Text("Trade"))),
                        SizedBox(width: 10),
                        Container(width: 100, child: ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.blue[800]), onPressed: () { print("transfer pressed"); }, child: Text("Transfer")))
                      ],
                    )
                  ]
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, left: 9.0, right: 9.0),
                child: Row(
                  children: [
                    Text("Favourites".toUpperCase()),
                    Spacer(),
                    Text("See All", style: TextStyle(color: Colors.blueAccent)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Card(
                  child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(bottom: 8.0),
                    itemCount: entries.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 60,
                        child: ListTile(
                          leading: Image(
                            width: ICONSIZE,
                            height: ICONSIZE,
                            image: AssetImage('assets/${images[index]}'),
                          ),
                          title: Text(entries[index],
                            style: TextStyle(
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          subtitle: Text("${price[index]}"),
                          trailing: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("\$${earnings[index]}",
                                style: TextStyle(
                                fontWeight: FontWeight.w500,
                                  fontSize: 18
                                ),
                        ),
                              Text("${percent[index]}%",
                                style: TextStyle(
                                  color: percent[index] < 0 ? Colors.red : Colors.green,
                                    fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                      )
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) => const Divider(),
                  ),
                ),
              ),
              Text('top gainers'.toUpperCase()),
              ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: topGainers.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: Image(
                        width: ICONSIZE,
                        height: ICONSIZE,
                        image: AssetImage('assets/${topGainersimages[index]}'),
                      ),
                      title: Text(topGainers[index],
                        style: TextStyle(
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      subtitle: Text("${symbol[index]}"),
                      trailing: Wrap(
                        children: [
                          Text("\$${topGainersPrice[index]}"),
                          Text("    +${topGainersPercent[index]}%   ",
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Icon(Icons.notifications_none_outlined, size: 20.0)
                        ]
                      ),
                    );
                  }
              )
            ],
          ),
        ),
      ),
    );
  }
}
