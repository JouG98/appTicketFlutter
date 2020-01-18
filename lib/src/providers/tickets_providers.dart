import 'package:http/http.dart' as http;

import 'dart:convert';
import 'dart:async';
import 'package:sistema_ticket/src/models/tickets.dart';

class TicketsProvider {

  String _url = 'http://192.168.1.111:3000/publico';
  
    //oe mejor pon el video de fernando jajaj, anda a la carpeta
  
  Future<List<Ticket>> getTickets() async{
    final resp = await http.get(_url);
    final decodeData = json.decode(resp.body);
    final tickets = new Tickets.fromJsonList(decodeData);
    return tickets.items;
  }

}
