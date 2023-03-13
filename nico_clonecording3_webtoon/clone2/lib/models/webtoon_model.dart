class WebtoonMode {
  final String title, thumb, id;

  WebtoonMode.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        thumb = json['thumb'],
        id = json['id'];
}
