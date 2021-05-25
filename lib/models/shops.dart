import 'products.dart';

class Shop{
  int _shopID;
  String _shopName;
  String _address;
  String _pincode;
  String _phoneNumber;
  String _email;
  List<Product> _products;
  String _note;
  String _ownerName;

  Shop(this._shopID,this._shopName,this._products,this._address,this._pincode,this._phoneNumber);

  //setter
  set shopID(int value) {
    _shopID = value;
  }

  set shopName(String value) {
    _shopName = value;
  }

  set address(String value) {
    _address = value;
  }

  set pincode(String value) {
    _pincode = value;
  }

  set ownerName(String value) {
    _ownerName = value;
  }

  set phoneNumber(String value) {
    _phoneNumber = value;
  }

  set email(String value) {
    _email = value;
  }

  set note(String value) {
    _note = value;
  }

  set products(List<Product> value) {
    _products = value;
  }

  //getter
  int get getShopID => _shopID;

  String get getAddress => _address;

  String get getPincode => _pincode;

  String get getOwnerName => _ownerName;

  String get getPhoneNumber => _phoneNumber;

  String get getEmail => _email;

  String get getShopName => _shopName;

  String get getNote => _note;

  List<Product> get getProducts => _products;
}