import 'package:app/screens/account.dart';
import 'package:app/screens/track.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'card.dart';
import 'home.dart';

class Base extends StatefulWidget {
  @override
  State<Base> createState() => _BaseState();
}

class _BaseState extends State<Base> {
  final PageStorageBucket _bucket = PageStorageBucket();
  final List<Widget> pages = [
    Home(),
    Account(),
    Track(),
    CreditCard(),
  ];
  Widget current = Home();

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.settings),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(Icons.notifications),
          )
        ],
        title: Center(child: Text("Home"),
        ),
      ),
      body: PageStorage(
        bucket: _bucket,
        child: pages[_selectedIndex],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.monetization_on),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        current = Home();
                        _selectedIndex = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.home_outlined, color:  _selectedIndex == 0 ? Colors.blue : Colors.grey),
                        Text(
                            "Home",
                            style: TextStyle(color:  _selectedIndex == 0 ? Colors.blue : Colors.grey)
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        current = Account();
                        _selectedIndex = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.account_balance_wallet_rounded,
                          color:  _selectedIndex == 1 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          "Accounts",
                            style: TextStyle(color:  _selectedIndex == 1 ? Colors.blue : Colors.grey)
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        current = Track();
                        _selectedIndex = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.timeline_rounded, color:  _selectedIndex == 2 ? Colors.blue : Colors.grey),
                        Text(
                            "Track",
                            style: TextStyle(color:  _selectedIndex == 2 ? Colors.blue : Colors.grey)
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        current = CreditCard();
                        _selectedIndex = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.credit_card_rounded, color: _selectedIndex == 3 ? Colors.blue : Colors.grey),
                        Text(
                            "Card",
                            style: TextStyle(color:  _selectedIndex == 3 ? Colors.blue : Colors.grey)
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
