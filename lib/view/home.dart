import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Sons para dormir',
        home: Scaffold(
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.black),
          ),
          body: const Center(
            child: Text(
              'Sons para dormir',
              style: TextStyle(fontSize: 24),
            ),
          ),
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text('Menu'),
                ),
                ListTile(
                  title: const Text('Sons para dormir'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => home()),
                    );
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
