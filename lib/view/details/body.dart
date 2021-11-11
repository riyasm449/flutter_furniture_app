import 'package:flutter/material.dart';
import 'package:learn_ar_flutter/model/data.dart';
import 'package:learn_ar_flutter/utils/commons.dart';
import 'package:learn_ar_flutter/view/details/product_image.dart';

import 'chat_and_cart.dart';
import 'list_of_color.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // it provide us total height and width
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small devices
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Hero(
                      tag: '1',
                      child: ProductPoster(
                        size: size,
                        image: product.images[0] ??
                            "https://www.godrejinterio.com/imagestore/B2C/56101543SD00017/56101543SD00017_01_500x500.png",
                      ),
                    ),
                  ),
                  ListOfColors(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                    child: Text(
                      product.name,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Text(
                    '\$${product.price}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: kSecondaryColor,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                    child: Text(
                      product.description,
                      style: TextStyle(color: kTextLightColor),
                    ),
                  ),
                  SizedBox(height: kDefaultPadding),
                ],
              ),
            ),
            ChatAndAddToCart(),
          ],
        ),
      ),
    );
  }
}
