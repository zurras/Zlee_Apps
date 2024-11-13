import 'package:flutter/material.dart';

class PromoPage extends StatelessWidget {
  final List<Map<String, String>> promos = [
    {
      'title': 'Diskon 50%',
      'description': 'Dapatkan diskon 50% untuk semua transaksi!'
    },
    {
      'title': 'Cashback 10%',
      'description': 'Dapatkan cashback 10% untuk top up saldo.'
    },
    {
      'title': 'Beli 1 Gratis 1',
      'description': 'Beli 1 produk dan dapatkan 1 produk gratis!'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text(
          'Promo',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: promos.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    promos[index]['title']!,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    promos[index]['description']!,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
