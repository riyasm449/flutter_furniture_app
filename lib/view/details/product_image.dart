import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_ar_flutter/utils/commons.dart';

class ProductPoster extends StatelessWidget {
  const ProductPoster({
    Key key,
    @required this.size,
    this.image,
  }) : super(key: key);

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      height: size.width * 0.8,
      child: Container(
        height: size.width * 0.7,
        width: size.width * 0.7,
        decoration: BoxDecoration(
            color: Colors.white, shape: BoxShape.circle, image: DecorationImage(image: NetworkImage(image))),
      ),
    );
  }
}
