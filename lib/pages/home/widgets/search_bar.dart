import 'package:amazon_application_ui/constants.dart';
import 'package:flutter/material.dart';

Widget buildSearch() => Padding(
      padding: const EdgeInsets.all(2 * Constants.kPadding),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search a book',
          fillColor: Colors.black.withOpacity(0.1),
          filled: true,
          prefixIcon: const Icon(Icons.search),
          // contentPadding: const EdgeInsets.symmetric(
          //   horizontal: Constants.kPadding,
          //   vertical: Constants.kPadding
          // ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none
          )
        ),
      ),
    );
