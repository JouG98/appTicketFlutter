import 'package:flutter/material.dart';

class GenerarTicket extends StatefulWidget {
  GenerarTicket({Key key}) : super(key: key);

  @override
  _GenerarTicketState createState() => _GenerarTicketState();
}

class _GenerarTicketState extends State<GenerarTicket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generar Ticket'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bg.png'), fit: BoxFit.cover),
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
                            'TICKETS',
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
                            'Generar Tickets',
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
              Container(
                child: Center(
                    child: MaterialButton(
                  onPressed: () {
                    print('generando..!');
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  color: Colors.greenAccent,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: Text(
                      'GENERAR MI TICKET',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
