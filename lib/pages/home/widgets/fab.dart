import 'package:amazon_application_ui/constants.dart';
import 'package:flutter/material.dart';

class BuildFAB extends StatelessWidget {
  const BuildFAB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet<void>(
          context: context,
          builder: (BuildContext buildContext) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Shop by',
                    style: TextStyle(color: Colors.black45),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Category',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  buildCategory(
                      category: 'Book',
                      iconData: Icons.book,
                      color: Colors.blue),
                  buildCategory(
                      category: 'Video games',
                      iconData: Icons.sports_esports,
                      color: Colors.deepOrange),
                  buildCategory(
                      category: 'Music & Movies',
                      iconData: Icons.movie,
                      color: Colors.blue),
                  buildCategory(
                      category: 'Grocery',
                      iconData: Icons.local_grocery_store,
                      color: Colors.cyan),
                  buildCategory(
                      category: 'Health & Beauty',
                      iconData: Icons.healing,
                      color: Colors.yellow.shade700),
                  buildCategory(
                      category: 'Sports',
                      iconData: Icons.sports_baseball_rounded,
                      color: Colors.red),
                  // 6 categories
                  const SizedBox(height: 10,)
                ],
              ),
            ),
          ),
        );
      },
      backgroundColor: Colors.white,
      child: const Icon(
        Icons.list_alt_rounded,
        color: Colors.blue,
      ),
    );
  }

  // create category widget
  Widget buildCategory(
      {required String category,
      required IconData iconData,
      required Color color}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Constants.kPadding),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(25),
        child: Container(
          width: double.infinity,
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 2 * Constants.kPadding,
            children: [
              CircleAvatar(
                backgroundColor: color,
                child: Icon(
                  // iconData,
                  iconData,
                  //  Icons.library_books,
                  color: Colors.white,
                ),
              ),
              Text(
                category,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ),
    );
  }
}
