// booking_ticket.dart
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../helpers/size_helper.dart';
import 'package:belajar/screens/list_nature.dart'; // Pastikan diimpor
import 'package:belajar/screens/output_ticket.dart'; // Imprt file output_ticket.dart

class BookingTiket extends StatefulWidget {
  const BookingTiket({Key? key}) : super(key: key);

  @override
  State<BookingTiket> createState() => _BookingTiketState();
}

class _BookingTiketState extends State<BookingTiket> {
  final _formKey = GlobalKey<FormState>();

  // Mendeskripsikan variabel input
  TextEditingController namaController = TextEditingController();
  TextEditingController tanggalJadwalController = TextEditingController();
  String _pilihtujuan = '';
  int _jumlahTiket = 0; // Default jumlah tiket
  int _hargaTiket = 0; // Deklarasi harga tiket
  int _totalHarga = 0; // Deklarasi total harga

  void initState() {
    tanggalJadwalController.text = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking Tiket'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: displayWidth(context) * 0.8,
          child: SingleChildScrollView(
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: EdgeInsets.all(24),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Formulir Biodata"),
                      SizedBox(
                        height: 18,
                      ),
                      TextFormField(
                        controller: namaController,
                        decoration: InputDecoration(
                          hintText: "Nama lengkap",
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Input nama';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Jumlah Tiket",
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Input jumlah tiket';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            _jumlahTiket = int.parse(value);
                            // Update _totalHarga sesuai dengan jumlah tiket yang diinput
                            _totalHarga = _hargaTiket * _jumlahTiket;
                          });
                        },
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      TextFormField(
                        controller: tanggalJadwalController,
                        decoration: InputDecoration(
                          hintText: "Tanggal Jadwal Tiket",
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Input tanggal jadwal tiket';
                          }
                          return null;
                        },
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime.now(),
                            lastDate: DateTime(2100),
                          );
                          if (pickedDate != null) {
                            String tanggalJadwal =
                                DateFormat('yyyy-MM-dd').format(pickedDate);
                            setState(() {
                              tanggalJadwalController.text = tanggalJadwal;
                            });
                          } else {
                            print("Tanggal tidak dipilih");
                          }
                        },
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          hintText: "Tujuan",
                          labelText: "Pilih tujuan",
                          border: OutlineInputBorder(),
                        ),
                        items: ListNatureScreen()
                            .natureData
                            .map<DropdownMenuItem<String>>(
                                (Map<String, dynamic> items) {
                          return DropdownMenuItem<String>(
                            value: items['nama'],
                            child: Text(items['nama']),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            // Update _pilihtujuan
                            _pilihtujuan = newValue!;
                            // Update _hargaTiket sesuai dengan tujuan yang dipilih
                            _hargaTiket = ListNatureScreen()
                                .natureData
                                .firstWhere((element) =>
                                    element['nama'] == _pilihtujuan)['harga'];
                          });
                        },
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: displayHeight(context) * 0.075,
                        child: ElevatedButton.icon(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.greenAccent),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                                side: BorderSide(color: Colors.green),
                              ),
                            ),
                          ),
                          icon: Icon(Icons.save,
                              color: Colors
                                  .white), // Ganti dengan ikon yang diinginkan
                          label: Text(
                            "Simpan",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            _submit();
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    } else {
      _formKey.currentState!.save();
      String nama = namaController.text;
      String tujuan = _pilihtujuan;
      String tanggalJadwal = tanggalJadwalController.text;

      // Update _submit untuk menghitung harga tiket
      Map<String, dynamic> selectedTujuan = ListNatureScreen()
          .natureData
          .firstWhere((element) => element['nama'] == tujuan);

      _hargaTiket = selectedTujuan['harga'];
      _totalHarga = _hargaTiket * _jumlahTiket;

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OutputFormTicketScreen(
            nama: nama,
            tujuan: tujuan,
            hargaTiket: _hargaTiket,
            tanggalJadwal: tanggalJadwal,
            jumlahTiket: _jumlahTiket,
            totalHarga: _totalHarga,
            imagePath: selectedTujuan['image'],
          ),
        ),
      );
    }
  }
}
