class Users{
  int _id;
  String _firstName;
  String _lastName;
  String _password;
  String _phoneNumber;
  String _email;
  String _address;


  Users(this._id,this._firstName,this._lastName,this._password,this._phoneNumber,this._email,this._address);

  //setter
  set id(int value) {
    _id = value;
  }
  set firstName(String value) {
    _firstName = value;
  }
  set lastName(String value) {
    _lastName = value;
  }
  set password(String value) {
    _password = value;
  }
  set email(String value) {
    _email = value;
  }
  set phoneNumber(String value) {
    _phoneNumber = value;
  }
  set address(String value) {
    _address = value;
  }

  //getter

  String get getAddress => _address;

  String get getFirstName => _firstName;

  String get getPhoneNumber => _phoneNumber;

  String get getEmail => _email;

  String get getPassword => _password;

  int get getId => _id;

  String get getLastName => _lastName;


}