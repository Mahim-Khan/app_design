import '../Utils/const.dart';

class Category{
  String icon;
  String title;

  Category({required this.icon, required this.title});

}

List<Category> category=[
  Category(
      icon: Images.nike,
      title: 'Nike'),
  Category(
      icon: Images.nike,
      title: 'Nike'),
  Category(
      icon: Images.puma,
      title: 'Puma'),
  Category(
      icon: Images.underArmour,
      title: 'Under Armour'),
  Category(
      icon: Images.adidas,
      title: 'Adidas'),
  Category(
      icon: Images.converse,
      title: 'Converse'),
];