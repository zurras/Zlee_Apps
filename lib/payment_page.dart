import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text(
          'Pembayaran',
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
              'Lakukan Pembayaran',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(
                labelText: 'Deskripsi Pembayaran',
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
                // Logika untuk melakukan pembayaran
                String description = _descriptionController.text;
                String amount = _amountController.text;

                // Tampilkan dialog konfirmasi atau lakukan logika pembayaran
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Konfirmasi Pembayaran'),
                    content: Text('Bayar Rp $amount untuk $description?'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(); // Tutup dialog
                        },
                        child: Text('Batal'),
                      ),
                      TextButton(
                        onPressed: () {
                          // Logika untuk melanjutkan pembayaran
                          Navigator.of(context).pop(); // Tutup dialog
                          // Tampilkan snackbar atau dialog sukses
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Pembayaran berhasil!')),
                          );
                        },
                        child: Text('Konfirmasi'),
                      ),
                    ],
                  ),
                );
              },
              child: Text('Bayar'),
            ),
          ],
        ),
      ),
    );
  }
}
