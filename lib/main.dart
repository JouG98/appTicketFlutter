import 'package:flutter/material.dart';
import 'package:sistema_ticket/src/pages/generarTicket.dart';
import 'package:sistema_ticket/src/pages/home.dart';
import 'package:sistema_ticket/src/pages/ultimosT.dart';
import 'package:sistema_ticket/src/pages/visualizarTickets.dart';
import 'package:sistema_ticket/src/pages/visualizar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        'generar': (context) => GenerarTicket(),
        'visuG': (context) => Visualizar(),
        'ultimosT': (context) => UltimosTickets(),
        'visualizar': (context) => VisualizarTickets(),
      },
      debugShowCheckedModeBanner: false,
      title: 'TicketApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
