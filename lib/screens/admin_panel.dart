import 'package:flutter/material.dart';
import 'package:ombrelloni_flutter/screens/prenotazioni.dart';

class AdminPanel extends StatefulWidget {
  const AdminPanel({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _AdminPanel();
}

class _AdminPanel extends State<AdminPanel> {
  String text = "Initial Text";
  List<Widget> widgetList = [
    Scaffold(backgroundColor: Colors.amber),
    Prenotazioni(),
    Scaffold(backgroundColor: Colors.red),
    Scaffold(backgroundColor: Colors.green)
  ];
  int widgetIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              const DrawerHeader(
                child: Text(
                  'Gestione',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                decoration: BoxDecoration(
                    color: Colors.green,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('images/beachmenu.jpg'))),
              ),
              Column(children: <Widget>[
                ListTile(
                    leading: const Icon(Icons.edit_calendar),
                    title: const Text('Calendario'),
                    onTap: () {
                      setState(() {
                        widgetIndex = 0;
                      });
                    }),
                ListTile(
                    leading: const Icon(Icons.book_online),
                    title: const Text('Prenotazioni'),
                    onTap: () {
                      setState(() {
                        widgetIndex = 1;
                      });
                    }),
                ListTile(
                    leading: const Icon(Icons.map),
                    title: const Text('Mappa spiaggia'),
                    onTap: () {
                      setState(() {
                        widgetIndex = 2;
                      });
                    }),
                ListTile(
                    leading: const Icon(Icons.edit),
                    title: const Text('Modifica mappa'),
                    onTap: () {
                      setState(() {
                        widgetIndex = 3;
                      });
                    }),
              ])
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text("Gestione Spiaggia"),
        ),
        body: widgetList[widgetIndex]);
  }
}
