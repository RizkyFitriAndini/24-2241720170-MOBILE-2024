class Item {
  String name;
  int price; 
  String photoUrl; 
  int stock; 
  double rating; 

  Item({
    required this.name,
    required this.price,
    required this.photoUrl,
    required this.stock,
    required this.rating,
  });

  @override
  String toString() {
    return 'Item(name: $name, price: $price, stock: $stock, rating: $rating)';
  }
}
