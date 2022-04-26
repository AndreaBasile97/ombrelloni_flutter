import 'package:flutter/material.dart';
import 'package:ombrelloni_flutter/screens/nav_drawer.dart';

class AdminPanel extends StatelessWidget {
  const AdminPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: AppBar(
        title: const Text('Side menu'),
      ),
      body: const Center(
        child: Text('Side Menu Tutorial'),
      ),
    );
  }
}
