class ProductModel {
  final String id;
  final String cover;
  final String name;
  final String genre;
  final String description;
  final String linkGame;
  final bool isLandscape;

  const ProductModel(
      {required this.id,
      required this.cover,
      required this.name,
      required this.genre,
      required this.description,
      required this.linkGame,
      required this.isLandscape});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
        id: json['id'],
        cover: json['cover'],
        name: json['name'],
        genre: json['genre'],
        description: json['description'],
        linkGame: json['link_game'],
        isLandscape:json['is_landscape']);
  }
}
