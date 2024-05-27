class ShoesModel {
  String? id;
  String? brand;
  String? image;
  String? title;
  double? rating;
  String? totalReview;
  String? price;
  String? gender;
  List<int>? sizes;
  String? description;
  List<Review>? review;

  ShoesModel(
      {this.id,
        this.brand,
        this.image,
        this.title,
        this.rating,
        this.totalReview,
        this.price,
        this.gender,
        this.sizes,
        this.description,
        this.review});

  ShoesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    brand = json['brand'];
    image = json['image'];
    title = json['title'];
    rating = json['rating'];
    totalReview = json['totalReview'];
    price = json['price'];
    gender = json['gender'];
    sizes = json['sizes'].cast<int>();
    description = json['description'];
    if (json['review'] != null) {
      review = <Review>[];
      json['reviews'].forEach((v) {
        review!.add(new Review.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['brand'] = this.brand;
    data['image'] = this.image;
    data['title'] = this.title;
    data['rating'] = this.rating;
    data['totalReview'] = this.totalReview;
    data['price'] = this.price;
    data['gender'] = this.gender;
    data['sizes'] = this.sizes;
    data['description'] = this.description;
    if (this.review != null) {
      data['reviews'] = this.review!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Review {
  String? id;
  String? image;
  String? name;
  String? rate;
  String? comment;

  Review({this.id, this.image, this.name, this.rate, this.comment});

  Review.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    name = json['name'];
    rate = json['rate'];
    comment = json['comment'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    data['name'] = this.name;
    data['rate'] = this.rate;
    data['comment'] = this.comment;
    return data;
  }
}
