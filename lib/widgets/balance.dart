import 'package:flutter/cupertino.dart';

class Balance extends StatelessWidget {
  Balance({
    Key? key,
    required this.balance,
  }) : super(key: key);

  String balance;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(11.0),
          child: Text("Total Balance".toUpperCase(),
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
              Text('${balance}',
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
    );
  }
}