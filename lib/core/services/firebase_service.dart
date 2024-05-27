import 'dart:core';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:priority_soft_task/core/modes/added_card_model.dart';
import 'package:priority_soft_task/core/modes/shoes_model.dart';

class FirebaseService {
  final CollectionReference shoesCollection =
      FirebaseFirestore.instance.collection('shoes');
  final CollectionReference addToCardCollection =
      FirebaseFirestore.instance.collection('addedToCard');
  List<ShoesModel> shoesList = [];

  Future<void> addDocument() async {
    final List<ShoesModel> shoesList = [
      ShoesModel(
        id: '5',
        brand: 'Jordan',
        image:
            "https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/shoes%2Fjordon.png?alt=media&token=b4d626cf-4e23-4468-a2a8-018fc8b1d118",
        title: 'Nike 1 Retro High Tie Dye',
        rating: 4.5,
        totalReview: '10',
        price: '2500',
        gender: 'Male',
        sizes: [
          39,
          28,
          41,
        ],
        description:
            'Engineered to crush any as-based workout, these On sneakers enhance the label\'s original Cloud sneaker with cutting edge technologies for a pair. ',
        review: [
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson1.png?alt=media&token=0a67a134-cd4e-4f5f-b8f8-61e3cb7edbe0',
            name: 'Maria Saris',
            rate: '5',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson2.png?alt=media&token=f46fc375-e6ca-4b43-ac8e-aacdf045038b',
            name: 'Gretchen Septimus',
            rate: '2',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson3.png?alt=media&token=1ccf82fa-e7a8-4d9c-aaff-dcb6dd4953c3',
            name: 'Maria Saris',
            rate: '4',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
        ],
      ),
      ShoesModel(
        id: '6',
        brand: 'Nike',
        image:
            'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/shoes%2Fnike.png?alt=media&token=e778c0ab-48a9-4eda-8c83-130cd7a4fada',
        title: 'Nike 2 Retro High Tie Dye',
        rating: 4.5,
        totalReview: '255',
        price: '2000',
        gender: 'Male',
        sizes: [
          39,
          40,
          41,
        ],
        description:
            'Engineered to crush any movement-based workout, these On sneakers enhance the label\'s original Cloud sneaker with cutting edge technologies for a pair. ',
        review: [
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson3.png?alt=media&token=1ccf82fa-e7a8-4d9c-aaff-dcb6dd4953c3',
            name: 'Maria Saris',
            rate: '1',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson2.png?alt=media&token=f46fc375-e6ca-4b43-ac8e-aacdf045038b',
            name: 'Gretchen Septimus',
            rate: '3',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson2.png?alt=media&token=f46fc375-e6ca-4b43-ac8e-aacdf045038b',
            name: 'Gretchen Septimus',
            rate: '4',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson2.png?alt=media&token=f46fc375-e6ca-4b43-ac8e-aacdf045038b',
            name: 'Maria Saris',
            rate: '3',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson1.png?alt=media&token=0a67a134-cd4e-4f5f-b8f8-61e3cb7edbe0',
            name: 'Gretchen Septimus',
            rate: '5',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          )
        ],
      ),
      ShoesModel(
        id: '6',
        brand: 'Adidas',
        image:
            "https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/shoes%2Fadidas.png?alt=media&token=556cc803-c754-4394-8a0d-d3be46c8fa4e",
        title: 'Adidas 1 Retro High Tie Dye',
        rating: 4.5,
        totalReview: '151',
        price: '4500',
        gender: 'Male',
        sizes: [
          39,
          40,
          41,
        ],
        description:
            'Engineered to crush any as-based workout, these On sneakers enhance the label\'s original Cloud sneaker with cutting edge technologies for a pair. ',
        review: [
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson2.png?alt=media&token=f46fc375-e6ca-4b43-ac8e-aacdf045038b',
            name: 'Gretchen Septimus',
            rate: '5',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson2.png?alt=media&token=f46fc375-e6ca-4b43-ac8e-aacdf045038b',
            name: 'Gretchen Septimus',
            rate: '1',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson2.png?alt=media&token=f46fc375-e6ca-4b43-ac8e-aacdf045038b',
            name: 'Maria Saris',
            rate: '4',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson1.png?alt=media&token=0a67a134-cd4e-4f5f-b8f8-61e3cb7edbe0',
            name: 'Gretchen Septimus',
            rate: '3',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson2.png?alt=media&token=f46fc375-e6ca-4b43-ac8e-aacdf045038b',
            name: 'Gretchen Septimus',
            rate: '5',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson2.png?alt=media&token=f46fc375-e6ca-4b43-ac8e-aacdf045038b',
            name: 'Gretchen Septimus',
            rate: '4',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson2.png?alt=media&token=f46fc375-e6ca-4b43-ac8e-aacdf045038b',
            name: 'Maria Saris',
            rate: '5',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson1.png?alt=media&token=0a67a134-cd4e-4f5f-b8f8-61e3cb7edbe0',
            name: 'Gretchen Septimus',
            rate: '5',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          )
        ],
      ),
      ShoesModel(
        id: '7',
        brand: 'Puma',
        image:
            "https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/shoes%2Fpuma.png?alt=media&token=cd6a1560-8447-458e-9c11-27186aa12722",
        title: 'Puma 1 Retro High Tie Dye',
        rating: 4.5,
        totalReview: '10',
        price: '2000',
        gender: 'Male',
        sizes: [
          39,
          28,
          41,
        ],
        description:
            'Engineered to crush any as-based workout, these On sneakers enhance the label\'s original Cloud sneaker with cutting edge technologies for a pair. ',
        review: [
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson2.png?alt=media&token=f46fc375-e6ca-4b43-ac8e-aacdf045038b',
            name: 'Gretchen Septimus',
            rate: '2',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson2.png?alt=media&token=f46fc375-e6ca-4b43-ac8e-aacdf045038b',
            name: 'Gretchen Septimus',
            rate: '4',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson2.png?alt=media&token=f46fc375-e6ca-4b43-ac8e-aacdf045038b',
            name: 'Maria Saris',
            rate: '4',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson1.png?alt=media&token=0a67a134-cd4e-4f5f-b8f8-61e3cb7edbe0',
            name: 'Gretchen Septimus',
            rate: '5',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson2.png?alt=media&token=f46fc375-e6ca-4b43-ac8e-aacdf045038b',
            name: 'Gretchen Septimus',
            rate: '3',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson2.png?alt=media&token=f46fc375-e6ca-4b43-ac8e-aacdf045038b',
            name: 'Gretchen Septimus',
            rate: '4',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson2.png?alt=media&token=f46fc375-e6ca-4b43-ac8e-aacdf045038b',
            name: 'Maria Saris',
            rate: '3',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson1.png?alt=media&token=0a67a134-cd4e-4f5f-b8f8-61e3cb7edbe0',
            name: 'Gretchen Septimus',
            rate: '5',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson2.png?alt=media&token=f46fc375-e6ca-4b43-ac8e-aacdf045038b',
            name: 'Gretchen Septimus',
            rate: '1',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson2.png?alt=media&token=f46fc375-e6ca-4b43-ac8e-aacdf045038b',
            name: 'Gretchen Septimus',
            rate: '5',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson2.png?alt=media&token=f46fc375-e6ca-4b43-ac8e-aacdf045038b',
            name: 'Maria Saris',
            rate: '5',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson1.png?alt=media&token=0a67a134-cd4e-4f5f-b8f8-61e3cb7edbe0',
            name: 'Gretchen Septimus',
            rate: '2',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson2.png?alt=media&token=f46fc375-e6ca-4b43-ac8e-aacdf045038b',
            name: 'Gretchen Septimus',
            rate: '2',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson2.png?alt=media&token=f46fc375-e6ca-4b43-ac8e-aacdf045038b',
            name: 'Gretchen Septimus',
            rate: '3',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson2.png?alt=media&token=f46fc375-e6ca-4b43-ac8e-aacdf045038b',
            name: 'Maria Saris',
            rate: '4',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson1.png?alt=media&token=0a67a134-cd4e-4f5f-b8f8-61e3cb7edbe0',
            name: 'Gretchen Septimus',
            rate: '4',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          )
        ],
      ),
      ShoesModel(
        id: '8',
        brand: 'Reebok',
        image:
            "https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/shoes%2Frebook.png?alt=media&token=b4ce9ea0-b5b7-4fff-816f-0900fae8d6bd",
        title: 'Reebok 1 Retro High Tie Dye',
        rating: 4.5,
        totalReview: '10',
        price: '2500',
        gender: 'Male',
        sizes: [
          39,
          28,
          41,
        ],
        description:
            'Engineered to crush any as-based workout, these On sneakers enhance the label\'s original Cloud sneaker with cutting edge technologies for a pair. ',
        review: [
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson2.png?alt=media&token=f46fc375-e6ca-4b43-ac8e-aacdf045038b',
            name: 'Gretchen Septimus',
            rate: '5',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson2.png?alt=media&token=f46fc375-e6ca-4b43-ac8e-aacdf045038b',
            name: 'Gretchen Septimus',
            rate: '5',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson2.png?alt=media&token=f46fc375-e6ca-4b43-ac8e-aacdf045038b',
            name: 'Maria Saris',
            rate: '2',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson1.png?alt=media&token=0a67a134-cd4e-4f5f-b8f8-61e3cb7edbe0',
            name: 'Gretchen Septimus',
            rate: '2',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          )
        ],
      ),
      ShoesModel(
        id: '8',
        brand: 'Vens',
        image:
            "https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/shoes%2Fvens.png?alt=media&token=2ae487d9-5885-4099-a2d0-1a5afd7857f0",
        title: 'Nike 1 Retro High Tie Dye',
        rating: 4.5,
        totalReview: '2',
        price: '2500',
        gender: 'Male',
        sizes: [
          39,
          28,
          41,
        ],
        description:
            'Engineered to crush any as-based workout, these On sneakers enhance the label\'s original Cloud sneaker with cutting edge technologies for a pair. ',
        review: [
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson2.png?alt=media&token=f46fc375-e6ca-4b43-ac8e-aacdf045038b',
            name: 'Gretchen Septimus',
            rate: '5',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson2.png?alt=media&token=f46fc375-e6ca-4b43-ac8e-aacdf045038b',
            name: 'Gretchen Septimus',
            rate: '1',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson2.png?alt=media&token=f46fc375-e6ca-4b43-ac8e-aacdf045038b',
            name: 'Maria Saris',
            rate: '5',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson1.png?alt=media&token=0a67a134-cd4e-4f5f-b8f8-61e3cb7edbe0',
            name: 'Gretchen Septimus',
            rate: '1',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson2.png?alt=media&token=f46fc375-e6ca-4b43-ac8e-aacdf045038b',
            name: 'Gretchen Septimus',
            rate: '5',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson2.png?alt=media&token=f46fc375-e6ca-4b43-ac8e-aacdf045038b',
            name: 'Gretchen Septimus',
            rate: '1',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson2.png?alt=media&token=f46fc375-e6ca-4b43-ac8e-aacdf045038b',
            name: 'Maria Saris',
            rate: '5',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          ),
          Review(
            id: '1',
            image:
                'https://firebasestorage.googleapis.com/v0/b/e-commerse-bca35.appspot.com/o/persons%2Fperson1.png?alt=media&token=0a67a134-cd4e-4f5f-b8f8-61e3cb7edbe0',
            name: 'Gretchen Septimus',
            rate: '2',
            comment:
                'Perfect for keeping your feet dry and warm in damp conditions. ',
          )
        ],
      ),
    ];
    final CollectionReference shoesCollection =
        FirebaseFirestore.instance.collection('shoes');

    for (ShoesModel shoes in shoesList) {
      await shoesCollection.doc().set({
        'brand': shoes.brand,
        'image': shoes.image,
        'title': shoes.title,
        'rating': shoes.rating,
        'totalReview': shoes.totalReview,
        'price': shoes.price,
        'gender': shoes.gender,
        'sizes': shoes.sizes,
        'description': shoes.description,
        'review': shoes.review
            ?.map((review) => {
                  'id': review.id,
                  'image': review.image,
                  'name': review.name,
                  'rate': review.rate,
                  'comment': review.comment,
                })
            .toList(),
      });
    }

    // print('Shoes data stored successfully!');
  }

  Future<bool> addItemToCard({
    required ShoesModel shoes,
    required String quantity,
    required String size,
  }) async {
    try {
      await addToCardCollection.doc().set({
        'brand': shoes.brand,
        'image': shoes.image,
        'title': shoes.title,
        'totalReview': shoes.totalReview,
        'price': shoes.price,
        'gender': shoes.gender,
        'quantity': quantity,
        'size': size,

      });
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<List<AddedToCardModel>> fetchDataFromAddedCard() async {
    // Query query = shoesCollection.orderBy('title').limit(itemCount);
    List<AddedToCardModel> addedToCardShoesList = [];
    Query query = addToCardCollection;
    QuerySnapshot querySnapshot = await query.get();

    querySnapshot.docs.forEach((doc) {
      Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
      addedToCardShoesList.add(AddedToCardModel(
        brand: data['brand'],
        image: data['image'],
        title: data['title'],
        totalReview: data['totalReview'],
        price: data['price'],
        gender: data['gender'],
      ));
    });
    print('FetchedAddedTpoCardList::$addedToCardShoesList');
    return addedToCardShoesList;
  }

  Future<List<ShoesModel>> fetchShoesFromFirestore(
      {required int itemCount}) async {
    // Query query = shoesCollection.orderBy('title').limit(itemCount);
    Query query = shoesCollection;
    QuerySnapshot querySnapshot = await query.get();

    // final data =
    //     ShoesModel.fromJson(querySnapshot.docs as Map<String, dynamic>);

    querySnapshot.docs.forEach((doc) {
      Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
      shoesList.add(ShoesModel(
        id: doc.id,
        brand: data['brand'],
        image: data['image'],
        title: data['title'],
        rating: data['rating'],
        totalReview: data['totalReview'],
        price: data['price'],
        gender: data['gender'],
        sizes: List<int>.from(data['sizes']),
        description: data['description'],
        review: (data['review'] as List<dynamic>).map((review) {
          return Review(
            id: review['id'],
            image: review['image'],
            name: review['name'],
            rate: review['rate'],
            comment: review['comment'],
          );
        }).toList(),
      ));
    });
    print('fetchedDataFromFirebase::${shoesList}');
    return shoesList;
  }

  Future<List<ShoesModel>> fetchShoesByFilter(
      {required String filterText, required String filterBy}) async {
    QuerySnapshot querySnapshot =
        await shoesCollection.where(filterBy, isEqualTo: filterText).get();

    List<ShoesModel> shoesList = [];
    querySnapshot.docs.forEach((doc) {
      Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
      shoesList.add(ShoesModel(
        id: doc.id,
        brand: data['brand'],
        image: data['image'],
        title: data['title'],
        rating: data['rating'],
        totalReview: data['totalReview'],
        price: data['price'],
        gender: data['gender'],
        sizes: List<int>.from(data['sizes']),
        description: data['description'],
        review: (data['review'] as List<dynamic>).map((review) {
          return Review(
            id: review['id'],
            image: review['image'],
            name: review['name'],
            rate: review['rate'],
            comment: review['comment'],
          );
        }).toList(),
      ));
    });
    print('fetchedDataFromFirebase::${shoesList}');
    return shoesList;
  }
}
