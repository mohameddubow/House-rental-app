import 'package:flutter/material.dart';

class ReceiptScreen extends StatelessWidget {
  static String id = 'receiptScreen';

  @override
  Widget build(BuildContext context) {
    final routeData = ModalRoute.of(context)!.settings.arguments as Map;
    final newPrice = routeData['price'];
    final newPhone = routeData['phone'];
    final newLocation = routeData['location'];
    final newName = routeData['name'];

    return Scaffold(
      appBar: AppBar(
          title: Text(
        'RECEIPT',
      )),
      body: Center(
        child: Container(
          color: Colors.white,
          height: 450,
          width: 300,
          child: Column(
            children: [
              Text(
                'RECEIPT',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    decoration: TextDecoration.underline,
                    color: Colors.black),
              ),
              SizedBox(
                height: 30,
              ),
              ListTile(
                leading: Text(
                  'Property name',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Text(' $newName'),
              ),
              Divider(
                thickness: 2.0,
                color: Colors.black,
              ),
              ListTile(
                leading: Text(
                  'Location',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Text(' $newLocation'),
              ),
              Divider(
                thickness: 2.0,
                color: Colors.black,
              ),
              ListTile(
                leading: Text(
                  'Owner\'s number: ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Text(' $newPhone'),
              ),
              Divider(
                thickness: 2.0,
                color: Colors.black,
              ),
              ListTile(
                leading: Text(
                  'Price',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Text('Kshs  $newPrice'),
              ),
              ListTile(
                leading: Text(
                  'VAT',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Text('Kshs 0.00'),
              ),
              Center(
                child: Text(
                  'PAID',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
