import 'package:flutter/material.dart';
import 'package:ombrelloni_flutter/models/nav_drawer.dart';

class AdminPanel extends StatefulWidget {
  const AdminPanel({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _AdminPanel();
}

class _AdminPanel extends State<AdminPanel> {
  int _selectedIndex = 0;

  void changeIndex(int i) {
    setState(() {
      _selectedIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(_selectedIndex.toString()),
      ),
      drawer: NavDrawer(),
      appBar: AppBar(
        title: const Text('Side menu'),
      ),
    );
  }
}
