import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _recipientController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text(
          'Transfer',
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
              'Transfer Uang',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _recipientController,
              decoration: InputDecoration(
                labelText: 'Nomor Tujuan',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
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
                // Logika untuk melakukan transfer
                String recipient = _recipientController.text;
                String amount = _amountController.text;
                // Tampilkan dialog konfirmasi atau lakukan logika transfer
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Konfirmasi Transfer'),
                    content: Text('Transfer Rp $amount ke $recipient?'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(); // Tutup dialog
                        },
                        child: Text('Batal'),
                      ),
                      TextButton(
                        onPressed: () {
                          // Logika untuk melanjutkan transfer
                          Navigator.of(context).pop(); // Tutup dialog
                          // Tampilkan snackbar atau dialog sukses
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Transfer berhasil!')),
                          );
                        },
                        child: Text('Konfirmasi'),
                      ),
                    ],
                  ),
                );
              },
              child: Text('Transfer'),
            ),
          ],
        ),
      ),
    );
  }
}
