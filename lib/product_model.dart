class Product {
  final String name;
  final String imageUrl;
  int quantity;

  Product({
    required this.name,
    required this.imageUrl,
    this.quantity = 1, // mặc định là 1 sản phẩm
  });
}