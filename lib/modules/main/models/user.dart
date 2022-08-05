class User {
  final int userId, albumId;
  int postsCount;
  final String name, url, thumbnailUrl;

  User({
    required this.userId,
    required this.albumId,
    this.postsCount = 0,
    required this.name,
    required this.url,
    required this.thumbnailUrl,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        userId: json['userId'],
        albumId: json['albumId'],
        name: json['name'],
        url: json['url'],
        thumbnailUrl: json['thumbnailUrl'],
      );
}
