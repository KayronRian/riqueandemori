class Info {
  int count;
  int pages;
  String? next;
  String? prev;

  Info({
    required this.count, required this.pages, this.next, this.prev,});

  factory Info.fromJson(Map<String, dynamic> json) {
    return Info(count: json['count'], pages: json['pages'], next: json['next'], prev: json['prev']);
  }
}

class CharacterResponse {
  Info info;
  List<Character> results;

  CharacterResponse({required this.info, required this.results})

  factory CharacterResponse.fromJson(Map<String, dynamic> json) {
    return CharacterResponse(info: json['info'], results: List<Character>.from(
      json['results'].Map((x) => Character.fromJson(x)),
      ),
    );
  }
}


class Character {
  // transforma o json em um obj do tipo character
  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      id: json['id'],
      name: json['name'],
      status: json['status'],
      species: json['species'],
      type: json['type'],
      gender: json['gender'],
      origin: json['origin'],
      image: json['image'],
      url: json['url'], 
      created: json['created'],
    )
}
}

