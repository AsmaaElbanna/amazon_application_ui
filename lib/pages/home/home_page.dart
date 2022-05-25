import 'package:amazon_application_ui/pages/home/widgets/app_bar.dart';
import 'package:amazon_application_ui/pages/home/widgets/books_list.dart';
import 'package:amazon_application_ui/pages/home/widgets/build_new_book.dart';
import 'package:amazon_application_ui/pages/home/widgets/fab.dart';
import 'package:amazon_application_ui/pages/home/widgets/header.dart';
import 'package:amazon_application_ui/pages/home/widgets/icons_list.dart';
import 'package:amazon_application_ui/pages/home/widgets/navigation_bar.dart';
import 'package:amazon_application_ui/pages/home/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...buildHeader(),
            buildSearch(),
            buildIconLis(),
            BooksList(),
            BuildNewBook()
          ],
        ),
      ),
     extendBody: true,
     floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BuildFAB(),
      bottomNavigationBar: buildNavigationBar(),
    );
  }
}
