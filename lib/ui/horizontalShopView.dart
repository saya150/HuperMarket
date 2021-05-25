import 'package:flutter/material.dart';
import 'dart:async';
//import 'package:firebase_database/firebase_database.dart';

class HorizontalShopView extends StatefulWidget {
  const HorizontalShopView({Key key}) : super(key: key);

  @override
  _HorizontalShopViewState createState() => _HorizontalShopViewState();
}

class _HorizontalShopViewState extends State<HorizontalShopView> {

  Future<String> getDataFromFuture() async{
    return new Future.delayed(const Duration(seconds: 2),()=>"Shops coming soon");
    //var firebase=FirebaseDatabase.instance;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      initialData: [],
      future: getDataFromFuture(),
        builder: (context,snapshot){
          if (!snapshot.hasData || snapshot.data.isEmpty)
            return Center(child: CircularProgressIndicator(),);
                //child:
             else{
            return Center(
              child:Row(
                children: <Widget>[
                  SizedBox(width: 100.0,height: 100,),
                  new Text(snapshot.data,style: TextStyle(color: Colors.grey,fontSize: 15),),
                  new Icon(Icons.favorite,color: Colors.grey,),
                ],
              ),);
          }


              },
    );
  }
}


