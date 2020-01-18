import 'package:flutter/material.dart';
// import 'package:sistema_ticket/src/providers/tickets_providers.dart';

class Visualizar extends StatefulWidget {
  Visualizar({Key key}) : super(key: key);

  @override
  _VisualizarState createState() => _VisualizarState();
}

class _VisualizarState extends State<Visualizar> {

  // String _vTickets = 'VISUALIZAR TICKETS';

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Visualizar Tickets'),
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
                            'Bienvenido',
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
                            'Vé los últimos Tickets',
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
                padding: EdgeInsets.fromLTRB(70.0, 110.0, 70.0, 0.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'ultimosT');
                  },
                  child: Card(
                    elevation: 7.0,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white, width: 1.0),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 5,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/utimos.png',
                          ),
                          // fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: _height > 640
                    ? EdgeInsets.fromLTRB(70.0, 320.0, 70.0, 0.0)
                    : EdgeInsets.fromLTRB(70.0, 280.0, 70.0, 0.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'visualizar');
                  },
                  child: Card(
                    elevation: 7.0,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white, width: 1.0),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 5,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/uG.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
