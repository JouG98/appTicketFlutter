import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sistema_ticket/src/models/tickets.dart';
import 'dart:convert';
import 'dart:async';

import 'package:sistema_ticket/src/providers/tickets_providers.dart';

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
    ticketsProvider.toString();
        return Scaffold(
          appBar: AppBar(
            title: Text('Últimos tickets atendidos'),
          ),
          body: Container(),
          //comenta todo eso
      //     body: ListView.builder(
      //       itemCount: items.length,
      //   itemBuilder: (context, index){
      //     return Column(
      //       children: <Widget>[
      //         ListTile(
      //       leading: Icon(Icons.directions_walk),
      //       title: Text('${items[index]}'),
      //       subtitle: Text(_ultimoTicket),
      //       trailing: Icon(Icons.notifications_none),
      //     ),
      //     Divider(
            
      //     )
      //       ],
      //     );
      //   },
      // ),
      
    );
  }
}
