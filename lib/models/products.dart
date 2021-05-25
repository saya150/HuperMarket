import 'package:flutter/cupertino.dart';

import 'shops.dart';

class Product{
  int _productId;
  String _productName;
  String _price;
  String _note;
  String _productDescription;
  String _colour;
  List<Shop> _shops;
  List<Image> _images;
  String _coloursAvailable;
  String _sizesAvailable;
  String _categoryTitle;
  double _rating;
  int _categoryID;

  Product(this._productId,this._productName,this._productDescription,this._price,this._shops,this._categoryTitle,this._categoryID);

  //setter
  set productId(int value) {
    _productId = value;
  }

  set productName(String value) {
    _productName = value;
  }

  set sizesAvailable(String value) {
    _sizesAvailable = value;
  }

  set colours(String value) {
    _colour = value;
  }

  set productDescription(String value) {
    _productDescription = value;
  }

  set shops(List<Shop> value) {
    _shops = value;
  }

  set price(String value) {
    _price = value;
  }

  set note(String value) {
    _note = value;
  }

  set images(List<Image> value) {
    _images = value;
  }

  set coloursAvailable(String value) {
    _coloursAvailable = value;
  }

  set categoryTitle(String value) {
    _categoryTitle = value;
  }

  set rating(double value) {
    _rating = value;
  }

  set categoryID(int value) {
    _categoryID = value;
  }
  //getter
  int get getCategoryID => _categoryID;

  double get getRating => _rating;

  String get getCategoryTitle => _categoryTitle;

  String get getColour => _colour;

  String get getProductDescription => _productDescription;

  List<Shop> get getShops => _shops;

  String get getPrice => _price;

  int get getProductId => _productId;

  List<Image> get getImages => _images;

  String get getSizesAvailable => _sizesAvailable;

  String get getProductName => _productName;

  String get getNote => _note;

  String get getColoursAvailable => _coloursAvailable;
}