import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_ar_flutter/view/search.dart';

import '../model/data.dart';
import '../utils/commons.dart';
import 'details/details.dart';
import 'productCard.dart';

class StartingPage extends StatefulWidget {
  const StartingPage({Key key}) : super(key: key);

  @override
  _StartingPageState createState() => _StartingPageState();
}

class _StartingPageState extends State<StartingPage> {
  Stream<QuerySnapshot> products =
  FirebaseFirestore.instance.collection('products').snapshots();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;


    return Scaffold(
        appBar: buildAppBar(),
        backgroundColor: kPrimaryColor,
        body:ProductsList()
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      centerTitle: false,
      title: Text('Dashboard'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.logout),
          onPressed: () async{
            await FirebaseAuth.instance.signOut().then((value) {
              Navigator.pushNamedAndRemoveUntil(context, "/login", (route) => false);
            });
          },
        ),
      ],
    );
  }

  Widget ProductsList() {
    return StreamBuilder<QuerySnapshot>(
      stream: products,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          print('>>>>>>>>>>>>>>>>>>>>>>> error : ${snapshot.error}');
          return Center(child: Text('Sorry! Something went wrong',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),));
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: Text('Loading...',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)));
        }

        return Column(
          children: [
            SearchBox(onChanged: (value) {}),
            // CategoryList(),
            SizedBox(height: kDefaultPadding / 2),
            Expanded(
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 70),
                    decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                  ),
                  ListView.builder(
                    itemCount: snapshot.data.size ?? 0,
                    itemBuilder: (context, index) {
                      print(snapshot.data.docs[index].data());
                      Product product = Product.fromJson(snapshot.data.docs[index].data());
                      return ProductCard(
                        itemIndex: index,
                        product: product,
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                product: product,
                              ),
                            ),
                          );
                        },
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
