class RandImage {
  String id;
  String url;
  RandImage({
    required this.id,
    required this.url,
  });

  factory RandImage.fromJson(Map<String, dynamic> json) => RandImage(
        id: json['id'] as String,
        url: json['url'] as String,
      );
}
