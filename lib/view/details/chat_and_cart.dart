import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:learn_ar_flutter/utils/commons.dart';
// import 'package:flutter_svg/svg.dart';

// import '../../../constants.dart';

class ChatAndAddToCart extends StatelessWidget {
  const ChatAndAddToCart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: Color(0xFFFCBF1E),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: <Widget>[
          // SvgPicture.asset(
          //   "assets/icons/chat.svg",
          //   height: 18,
          // ),
          Icon(
            Icons.chat_outlined,
            color: Colors.white,
          ),
          SizedBox(width: kDefaultPadding / 2),
          Text(
            "Chat",
            style: TextStyle(color: Colors.white),
          ),
          // it will cover all available spaces
          Spacer(),
          FlatButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
            ),
            label: Text(
              "Add to Cart",
              style: TextStyle(color: Colors.white),
            ),
            // icon: SvgPicture.asset(
            //   "assets/icons/shopping-bag.svg",
            //   height: 18,
            // ),
          ),
        ],
      ),
    );
  }
}
