//import 'dart:ffi';

/*class Rating {
  late String _rate;
  late int _count;
}*/

class Product {
  late int _id;
  late String _title;
  late double _price;
  late String _description;
  late String _category;
  late String _image;
  //Rating _rating;

  Product(
    this._id,
    this._title,
    this._price,
    this._description,
    this._category,
    this._image,
    //this._rating,
  );

  int get id => _id;

  String get title => _title;

  double get price => _price;

  String get description => _description;

  String get category => _category;

  String get image => _image;

  //get rating => _rating;
}
