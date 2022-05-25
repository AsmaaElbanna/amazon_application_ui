import 'package:amazon_application_ui/constants.dart';
import 'package:flutter/material.dart';

List<Widget> buildHeader() => [
      const Padding(
        padding: EdgeInsets.only(
            left: 2 * Constants.kPadding, top: Constants.kPadding),
        child: Text(
          'Bookshelf',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      const Padding(
        padding: EdgeInsets.symmetric(
            vertical: Constants.kPadding, horizontal: 2 * Constants.kPadding),
        child: Text(
          'Welcome to Amazon store',
          style: TextStyle(color: Colors.black45, fontSize: 18),
        ),
      ),
    ];
