import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class VisualizarTickets extends StatefulWidget {
  VisualizarTickets({Key key}) : super(key: key);

  @override
  _VisualizarTicketsState createState() => _VisualizarTicketsState();
}

class _VisualizarTicketsState extends State<VisualizarTickets> {
  String _ultimoTicket = '';
  @override
  void initState() {
    _data();
    super.initState();
  }

  void _data() async {
    var data = await http.get('http://192.168.137.1:3000/nuevo-ticket');
    _ultimoTicket = data.body;
    print(_ultimoTicket);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Visualizar'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0.0),
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Último ticket',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'El ticket generado es:',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Image(
                        image: AssetImage('assets/images/tickets.png'),
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width / 5,
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 110.0, 10.0, 0.0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 1.7,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/fondot.png',
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  _ultimoTicket,
                  style: TextStyle(
                    fontSize: 45.0,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
