class Order{

  int _userID;
  int _orderID;
  int _productID;
  int _categoryID;
  int _shopID;
  String _categoryTitle;
  DateTime _orderDate;
  DateTime _paymentDate;
  DateTime _deliveryDate;
  String _paymentDetails;
  bool _isDelivered;
  bool _isPaid;

  Order(this._userID,this._orderID,this._productID,this._categoryID,this._shopID,this._categoryTitle,this._orderDate,this._paymentDate,this._deliveryDate,this._paymentDetails,this._isDelivered,this._isPaid);

  int get getProductID => _productID;

  set productID(int value) {
    _productID = value;
  }

  int get getShopID => _shopID;

  set shopID(int value) {
    _shopID = value;
  }

  DateTime get getDeliveryDate => _deliveryDate;

  set deliveryDate(DateTime value) {
    _deliveryDate = value;
  }

  int get getCategoryID => _categoryID;

  set categoryID(int value) {
    _categoryID = value;
  }

  String get getCategoryTitle => _categoryTitle;

  set categoryTitle(String value) {
    _categoryTitle = value;
  }

  bool get getIsPaid => _isPaid;

  set isPaid(bool value) {
    _isPaid = value;
  }

  bool get getIsDelivered => _isDelivered;

  set isDelivered(bool value) {
    _isDelivered = value;
  }

  DateTime get getPaymentDate => _paymentDate;

  set paymentDate(DateTime value) {
    _paymentDate = value;
  }

  int get getOrderID => _orderID;

  set orderID(int value) {
    _orderID = value;
  }

  String get getPaymentDetails => _paymentDetails;

  set paymentDetails(String value) {
    _paymentDetails = value;
  }

  DateTime get getOrderDate => _orderDate;

  set orderDate(DateTime value) {
    _orderDate = value;
  }

  int get getUserID => _userID;

  set userID(int value) {
    _userID = value;
  }
}