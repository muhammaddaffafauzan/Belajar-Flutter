import 'package:belajar/screens/booking_ticket.dart';
import 'package:belajar/screens/list_nature.dart';
import 'package:belajar/screens/menu_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter",
      initialRoute: '/',
      routes: {
        '/': (context) => NavigationMenu(),
        'nature': (context) => ListNatureScreen(),
        'booking': (context) => BookingTiket()
      },
    );
  }
}
