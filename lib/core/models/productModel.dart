class Product{

  String id;
  String name;
  String img;
  String price;

  Product({this.id, this.price, this.name, this.img});

  Product.fromMap(Map snapshot, String id) :
    id = id ?? '',
    price = snapshot['price'] ?? '',
    name = snapshot['name'] ?? '',
    img = snapshot['img'] ?? '';

  toJson(){
    return {
      "price": price,
    "name": name,
    "img": img,
    };
    
  }
}