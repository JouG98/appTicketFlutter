import 'package:flutter/material.dart';

import 'package:sistema_ticket/src/providers/tickets_providers.dart';
import 'package:sistema_ticket/src/widgets/listTickets.dart';

class UltimosTickets extends StatefulWidget {
  UltimosTickets({Key key}) : super(key: key);

  @override
  _UltimosTicketsState createState() => _UltimosTicketsState();
}

class _UltimosTicketsState extends State<UltimosTickets> {
  // String _ultimoTicket = '';
  // @override
  // void initState() {
  //   _data();
  //   super.initState();
  // }

  // void _data() async {
  //   // var data = await http.get('http://192.168.137.1:3000/publico');
  //   // _ultimoTicket = data.body;
  //   // final decodedData = json.decode(data.body);
  //   // Tickets.fromJsonList(decodedData);
  //  // print('Esto es lo que deseo ver ${Ticket().escritorio}');
  //  //conecta el cell, anda a esta pantalla,,, se puso en rojo
  //   final ticketsProvider = new TicketsProvider();
  //   ticketsProvider.toString();
  //   setState(() {});
  //   // oe regreso a lo que la habias dejado y luego se puso rojo, es que sol, ya vi me llego null
  // }
  //elimina la app, avisas cuando la eliminas, ya!!!

  @override
  Widget build(BuildContext context) {
    //final List<String> items = List<String>.generate(4, (index) => 'Tickets atendidos: ${++index}');
    final ticketsProvider = new TicketsProvider();
    return Scaffold(
      appBar: AppBar(
        title: Text('Últimos tickets atendidos'),
      ),
      body: FutureBuilder(
        future: ticketsProvider.getTickets(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListTickets(
              tickets: snapshot.data,
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
