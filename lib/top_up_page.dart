import 'package:flutter/material.dart';

class TopUpPage extends StatelessWidget {
  final TextEditingController _amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text(
          'Top Up Saldo',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Top Up Saldo Anda',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _amountController,
              decoration: InputDecoration(
                labelText: 'Jumlah Uang',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logika untuk melakukan top up
                String amount = _amountController.text;
                // Tampilkan dialog konfirmasi atau lakukan logika top up
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Konfirmasi Top Up'),
                    content: Text('Top Up Rp $amount?'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(); // Tutup dialog
                        },
                        child: Text('Batal'),
                      ),
                      TextButton(
                        onPressed: () {
                          // Logika untuk melanjutkan top up
                          Navigator.of(context).pop(); // Tutup dialog
                          // Tampilkan snackbar atau dialog sukses
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Top Up berhasil!')),
                          );
                        },
                        child: Text('Konfirmasi'),
                      ),
                    ],
                  ),
                );
              },
              child: Text('Top Up'),
            ),
          ],
        ),
      ),
    );
  }
}
