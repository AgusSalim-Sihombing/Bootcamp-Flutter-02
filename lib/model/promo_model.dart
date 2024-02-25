
class PromoModel {
  final String title;
  final int id;
  final int price;
  final String? imageUrl;

  PromoModel({
    required this.title,
    required this.id,
    required this.price,
    this.imageUrl,
  });
}
