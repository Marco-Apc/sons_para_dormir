import 'package:flutter/material.dart';
import 'package:sons/view/widgets/music_card.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sons para dormir',
        home: Scaffold(
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.black),
            title: const Text('Sons para dormir',
                style: TextStyle(color: Colors.black)),
            backgroundColor: Colors.lightBlueAccent,
            elevation: 0,
          ),
          body: ListView.builder(
            itemCount: 2, // Fixed count as requested
            itemBuilder: (context, index) {
              return const MusicCard();
            },
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
                      MaterialPageRoute(builder: (context) => const home()),
                    );
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
