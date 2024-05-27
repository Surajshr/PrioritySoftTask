class AddedToCardModel {
  String? brand;
  String? image;
  String? title;
  String? totalReview;
  String? price;
  String? gender;
  String? size;
  int? quantity;

  AddedToCardModel({
    this.brand,
    this.image,
    this.title,
    this.totalReview,
    this.price,
    this.gender,
    this.size,
    this.quantity,
  });

  AddedToCardModel.fromJson(Map<String, dynamic> json) {
    brand = json['brand'];
    image = json['image'];
    title = json['title'];

    totalReview = json['totalReview'];
    price = json['price'];
    gender = json['gender'];
    size = json['size'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['brand'] = this.brand;
    data['image'] = this.image;
    data['title'] = this.title;
    data['totalReview'] = this.totalReview;
    data['price'] = this.price;
    data['gender'] = this.gender;
    data['size'] = this.size;
    data['quantity'] = this.quantity;

    return data;
  }
}
