import 'package:flutter/material.dart';

class ProductsView extends StatefulWidget {
  const ProductsView({Key key}) : super(key: key);

  @override
  _ProductsViewState createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  Future<String> getDataFromFuture() async{
   return new Future.delayed(const Duration(seconds: 5),()=>'Coming soon in your place');
    //var firebase=FirebaseDatabase.instance;
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      initialData: "hello",
      future: getDataFromFuture(),
      builder: (context,snapshot){
        if (snapshot.hasData!=null) {
          return Center( child:Row(
            children: <Widget>[
              SizedBox(width: 100.0,height: 100,),
              new Text(snapshot.data,style: TextStyle(color: Colors.grey,fontSize: 15),),
              new Icon(Icons.favorite,color: Colors.grey,),
            ],
          ),);
        } //child:
        else
          return CircularProgressIndicator();

      },
    );
  }
}

