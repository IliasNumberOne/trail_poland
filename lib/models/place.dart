class Place {
  final int id;
  final String title;
  final String? title2;
  final String image;
  final String bigImage;
  final String content;
  final int reviews;
  final double rate;

  const Place({
    required this.id,
    required this.title,
    this.title2,
    required this.image,
    required this.bigImage,
    required this.content,
    required this.reviews,
    required this.rate,
  });
}