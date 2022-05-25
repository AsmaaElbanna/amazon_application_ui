import 'package:amazon_application_ui/models/book_model.dart';
import 'package:amazon_application_ui/pages/book/widgets/book_display.dart';
import 'package:amazon_application_ui/pages/book/widgets/build_description.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class BookPage extends StatefulWidget {
  final BookModel bookModel;
   BookPage(this.bookModel) ;

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.keyboard_arrow_left_outlined,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(Constants.kPadding),
            child: IconButton(
              onPressed: () {
                setState(() {
                  widget.bookModel.favorite = !widget.bookModel.favorite;

                });
              },
              icon: Icon(
                widget.bookModel.favorite ? Icons.favorite : Icons.favorite_border ,
                color: Colors.deepOrange,
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Constants.kPadding * 4),
            child: Column(
             // crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,
              children:[
                ... buildBookDisplay(bookModel: widget.bookModel),
                ... buildDescription(),
              ]

            ),
          ),
        ),
      ),
    );
  }
}
