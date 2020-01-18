import 'package:flutter/material.dart';

class ListTickets extends StatelessWidget {

  final List<dynamic> tickets;

  const ListTickets({@required this.tickets, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: tickets.length,
      itemBuilder: (BuildContext contex, int index){
        return Column(
          children: <Widget>[
            ListTile(
              title: Text('El escritorio ${tickets[index].escritorio} se encuentra atendiendo'),
              subtitle: Text('Al ticket número ${tickets[index].numero}'),
              leading: Image(
                image: AssetImage('assets/images/ticket.png'),
              ),
            ),
            Divider(),
          ],
        );
      },
    );
  }
}