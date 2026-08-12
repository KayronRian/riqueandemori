import 'package:flutter/material.dart';
import 'package:teste/screens/characterlist.dart';

void main() {
  runApp(MaterialApp(home: TelaInicial()));
}

class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rick and Mory API")),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Characterlist()),
              );
            },
            child: CircleAvatar(
              child: Image.asset("images/characters.png"),
              radius: 80,
            ),
          ),
          Center(child: Text("personagens", style: TextStyle(fontSize: 20))),
          GestureDetector(
            onTap: () {},
            child: CircleAvatar(
              child: Image.asset("images/episodes.png"),
              radius: 80,
            ),
          ),
          Center(child: Text("locais", style: TextStyle(fontSize: 20))),
          GestureDetector(
            onTap: () {},
            child: CircleAvatar(
              child: Image.asset("images/locations.png"),
              radius: 80,
            ),
          ),
          Center(child: Text("episodios", style: TextStyle(fontSize: 20))),
        ],
      ),
    );
  }
}
