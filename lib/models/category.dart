class Category{
  int _categoryID;
  String _categoryTitle;
  String _description;

  Category(this._categoryID,this._categoryTitle,this._description);

  int get getCategoryID => _categoryID;

  set categoryID(int value) {
    _categoryID = value;
  }

  String get getDescription => _description;

  set description(String value) {
    _description = value;
  }

  String get getCategoryTitle => _categoryTitle;

  set categoryTitle(String value) {
    _categoryTitle = value;
  }
}