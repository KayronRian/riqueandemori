import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:teste/model/character.dart';

class Characterlist extends StatelessWidget {

 Future<List<Character>> pageData() async {
    final response = await http.get(
      Uri.parse("https://rickandmortyapi.com/api/character?page=1"),
    );

    if(response.statusCode == 200) {
      return CharacterResponse.fromJson(json.decode(response.body)).results;
    } else {
      throw Exception("faiou");
    }
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
