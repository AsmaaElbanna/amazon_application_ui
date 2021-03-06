import 'package:flutter/material.dart';

import '../../../constants.dart';

Widget buildNavigationBar() => BottomAppBar(
  shape: CircularNotchedRectangle(),
      notchMargin: 8.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 50),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.message_outlined),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 50),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_shopping_cart_outlined),
            ),
          ),
        ],
      ),
    );
