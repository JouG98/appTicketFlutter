import 'package:flutter/material.dart';
import 'package:sistema_ticket/pages/generarTicket.dart';
import 'package:sistema_ticket/pages/home.dart';
import 'package:sistema_ticket/pages/visualizarTickets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => Home(),
        'generar' : (context) => GenerarTicket(),
        'visualizar' : (context) => VisualizarTickets(),
      },
      debugShowCheckedModeBanner: false,
      title: 'TicketApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
