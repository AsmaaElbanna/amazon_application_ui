import 'package:amazon_application_ui/constants.dart';
import 'package:amazon_application_ui/models/book_model.dart';
import 'package:amazon_application_ui/pages/book/book_page.dart';
import 'package:flutter/material.dart';

final BookModel newBook = BookModel.newBook;

class BuildNewBook extends StatelessWidget {
  const BuildNewBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: Constants.kPadding, horizontal: 2 * Constants.kPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Hot New Release',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              Icon(Icons.keyboard_arrow_right)
            ],
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>  BookPage(newBook)));
          },
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: Constants.kPadding),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 5,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      newBook.image,
                      height: 180,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 2 * Constants.kPadding,
                    vertical: Constants.kPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          newBook.title,
                          style: const TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        Text(
                          newBook.subtitle,
                          style: const TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        '4.9',
                      ),
                      style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: Constants.kPadding,
                              horizontal: Constants.kPadding),
                          backgroundColor: Colors.deepOrange,
                          primary: Colors.white,
                         // minimumSize: Size(5, 5),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).padding.bottom,)
      ],
    );
  }
}
