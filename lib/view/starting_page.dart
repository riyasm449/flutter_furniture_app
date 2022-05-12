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
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: kPrimaryColor,
      body: Column(
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
                  itemCount: productList.product.length,
                  itemBuilder: (context, index) => ProductCard(
                    itemIndex: index,
                    product: productList.product[index],
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            product: productList.product[index],
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      centerTitle: false,
      title: Text('Dashboard'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.notifications_on_rounded),
          onPressed: () {},
        ),
      ],
    );
  }
}
