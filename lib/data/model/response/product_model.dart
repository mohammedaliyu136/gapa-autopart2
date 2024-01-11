class Product {
  int id=0;
  String name="";
  String description="";
  String image="";
  int categoryId=0;
  double price=0;
  double tax=0;
  double discount=0;
  String discountType="";
  int vendorId=0;
  String vendorName="";
  double avgRating=0.0;
  int ratingCount=0;

  Product(
      {required this.id,
        required this.name,
        required this.description,
        required this.image,
        required this.categoryId,
        required this.price,
        required this.tax,
        required this.discount,
        required this.discountType,
        required this.vendorId,
        required this.vendorName,
        required this.avgRating,
        required this.ratingCount,
      });

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    image = json['image'];
    categoryId = json['category_id'];
    price = json['price'].toDouble();
    tax = json['tax'] != null ? json['tax'].toDouble() : 0.0;
    discount = json['discount'].toDouble();
    discountType = json['discount_type'];
    vendorId = json['store_id'];
    vendorName = json['store_name'];
    avgRating = json['avg_rating'].toDouble();
    ratingCount = json['rating_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['image'] = this.image;
    data['category_id'] = this.categoryId;
    data['price'] = this.price;
    data['tax'] = this.tax;
    data['discount'] = this.discount;
    data['discount_type'] = this.discountType;
    data['store_id'] = this.vendorId;
    data['store_name'] = this.vendorName;
    data['avg_rating'] = this.avgRating;
    data['rating_count'] = this.ratingCount;
    return data;
  }
}