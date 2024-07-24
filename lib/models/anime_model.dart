class AnimeModel {
  final int episodes;
  final int id;
  final String jpTitle;
  final String engTitle;
  final String synopsis;
  final String imageURL;
  final String status;
  final String source;
  final double rating;

  AnimeModel({
    required this.id,
    required this.episodes,
    required this.jpTitle,
    required this.engTitle,
    required this.synopsis,
    required this.imageURL,
    required this.status,
    required this.source,
    required this.rating,
  });

  factory AnimeModel.fromJson(Map<String, dynamic> json) {
    return AnimeModel(
      id: json['id'] ?? 0,
      jpTitle: json['title'] ?? '',
      engTitle: json['title_english'] ?? '',
      synopsis: json['synopsis'] ?? '',
      episodes: json['episodes'] ?? 0,
      imageURL: json['images']['jpg']['large_image_url'] ?? '',
      status: json['status'] ?? '',
      source: json['source'] ?? '',
      rating: json['score'] ?? 0.0,
    );
  }
}
