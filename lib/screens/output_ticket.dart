import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OutputFormTicketScreen extends StatelessWidget {
  final String nama, tujuan, tanggalJadwal, imagePath;
  final int hargaTiket, jumlahTiket, totalHarga;

  OutputFormTicketScreen({
    Key? key,
    required this.nama,
    required this.tujuan,
    required this.hargaTiket,
    required this.tanggalJadwal,
    required this.jumlahTiket,
    required this.totalHarga,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Intl.defaultLocale = 'id_ID';
    return Scaffold(
      appBar: AppBar(
        title: Text('Output Form'),
        centerTitle: true,
        backgroundColor: Colors.red, // Menengahkan judul appbar
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              margin: EdgeInsets.all(16),
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Nama : $nama"),
                    SizedBox(height: 8),
                    Text("Tujuan : $tujuan"),
                    SizedBox(height: 8),
                    Text("Tanggal Jadwal Tiket : $tanggalJadwal"),
                    SizedBox(height: 8),
                    Text("Jumlah Pembelian Tiket : $jumlahTiket"),
                    SizedBox(height: 8),
                    Text("Harga Tiket : IDR ${hargaTiket.toString()}"),
                    SizedBox(height: 8),
                    Text("Total Harga : IDR ${totalHarga.toString()}"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  imagePath,
                  width: 300,
                  height: 200,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
