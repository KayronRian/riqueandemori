import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Characterlist extends StatelessWidget {

  void pageData() {
    final response = http.get(Uri.parse("https://rickandmortyapi.com/api/character"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista de personagens')),
      body: FutureBuilder(
        future: future,
        builder: builder
        ),
    )
  }
}
