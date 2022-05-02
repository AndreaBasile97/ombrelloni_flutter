import 'package:flutter/material.dart';
import 'package:ombrelloni_flutter/screens/find_by_date.dart';

class NavDrawer extends StatefulWidget {
  NavDrawer({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _NavDrawer();
}

class _NavDrawer extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            child: Text(
              'Side menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            // decoration: BoxDecoration(
            //     color: Colors.green,
            //     image: DecorationImage(
            //         fit: BoxFit.fill,
            //         image: AssetImage('assets/images/cover.jpg'))),
          ),
          ListTile(
            leading: const Icon(Icons.input),
            title: const Text('Welcome'),
            onTap: () => {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => DatePicker())),
            },
          ),
          ListTile(
            leading: const Icon(Icons.verified_user),
            title: const Text('Profile'),
            onTap: () => {setState(() {}), Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
