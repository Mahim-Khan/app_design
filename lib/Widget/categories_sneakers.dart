import 'package:app_design/Widget/shadowed_button.dart';
import 'package:app_design/Widget/white_category_button.dart';
import 'package:app_design/model/category_model.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../Utils/const.dart';

class CategoriesCatalog extends StatefulWidget {
  const CategoriesCatalog({Key? key, required this.category}) : super(key: key);
  final List<Category> category;
  @override
  State<CategoriesCatalog> createState() => _CategoriesCatalogState();
}

class _CategoriesCatalogState extends State<CategoriesCatalog> {
  int _selectedCategory = 1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (ctx, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: (index == 0)
                  ? const SizedBox(
                      width: 12,
                    )
                  : (_selectedCategory == index)
                      ? SizedBox(
                          height: 47,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              PrimaryShadowedButton(
                                  onPressed: () {
                                    setState(() {
                                      _selectedCategory = index;
                                    });
                                  },
                                  borderRadius: 80,
                                  color:
                                      Theme.of(context).colorScheme.onSurface,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                          height: 47,
                                          width: 47,
                                          child: WhiteCategoryButton(
                                            updateCategory: () {},
                                            images: category[_selectedCategory]
                                                .icon,
                                          ).p(5)),
                                      Text(
                                        category[_selectedCategory].title,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ).px(8),
                                      12.widthBox,
                                    ],
                                  )),
                            ],
                          ),
                        )
                      : WhiteCategoryButton(
                          updateCategory: () {
                            setState(() {
                              _selectedCategory = index;
                            });
                          },
                          images: Images.sneakers,
                        ),
            );
          }),
    );
  }
}
