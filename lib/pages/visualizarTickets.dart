import 'package:flutter/material.dart';

class VisualizarTickets extends StatefulWidget {
  VisualizarTickets({Key key}) : super(key: key);

  @override
  _VisualizarTicketsState createState() => _VisualizarTicketsState();
}

class _VisualizarTicketsState extends State<VisualizarTickets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Visualizar'),
      ),
    );
  }
}