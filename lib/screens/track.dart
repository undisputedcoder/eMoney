import 'package:app/widgets/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Track extends StatelessWidget {
  final List<String> favourites = ['Bitcoin', 'Ethereum', 'Crypto.com Coin', 'TrueUSD Coin'];
  final List<String> images = ['bitcoin.png', 'ethereum.png', 'crypto.png', 'trueusd.png'];
  final List<String> currency = ['BTC', 'ETH', 'CRO', 'TUSD'];
  final List<num> prices = [77415.39, 5665.48, 0.3266, 0.9998];
  final List<String> all = ['IoTeX', 'Solana', 'Tether'];
  final List<String> allImages = ['iotx.png', 'solana.png', 'tether.png'];
  final List<String> allCurrency = ['IOTX', 'SOL', 'USDT'];
  final List<num> allPrices = [0.2363, 299.96, 1.25];

  static const double ICONSIZE = 35.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget> [
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: MyPrefilledSearch(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 11.0, right: 6.0),
              child: Row(
                children: [
                  Text("Favourites".toUpperCase(), style: TextStyle(fontWeight: FontWeight.w700)),
                  Spacer(),
                  Text("Large Cap", style: TextStyle(fontWeight: FontWeight.w700)),
                  Icon(Icons.arrow_drop_down_sharp)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Card(
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: favourites.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Image(
                        width: ICONSIZE,
                        height: ICONSIZE,
                        image: AssetImage('assets/${images[index]}'),
                      ),
                      title: Text(favourites[index],
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      subtitle: Text(currency[index]),
                      trailing: Text("\$${prices[index]}",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    );
                  }, separatorBuilder: (BuildContext context, int index) => Divider(),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 11.0),
              child: Align(child: Text("All Coins".toUpperCase(), style: TextStyle(fontWeight: FontWeight.w700)), alignment: Alignment.centerLeft,),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Card(
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: all.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Image(
                        width: ICONSIZE,
                        height: ICONSIZE,
                        image: AssetImage('assets/${allImages[index]}'),
                      ),
                      title: Text(all[index]),
                      subtitle: Text(allCurrency[index],
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      trailing: Text("\$${allPrices[index]}",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) => Divider(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
