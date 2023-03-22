class WebtoonModel {
  final String title, thumb, id;

  WebtoonModel.fromJson(Map<String, dynamic> jsons)
      : title = jsons['title'],
        thumb = jsons['thumb'],
        id = jsons['id'];
}
