import 'package:flutter/material.dart';
import '../Widget/app_bar.dart';
import '../Widget/categories_sneakers.dart';
import '../Widget/new_arrival_list.dart';
import '../Widget/popular_list.dart';
import '../Widget/search_bar.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: ListView(
        children: [
          Column(
            children: [
              ScreenAppBar(
                onPressed: () {},
                isSelect: false,
                onTap: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              const SearchBar(),
              const SizedBox(
                height: 10,
              ),
              const CategoriesCatalog(
                category: [],
              ),
              const PopularList(),
              const NewArrivalList(),
            ],
          ),
        ],
      ),
    );
  }
}


