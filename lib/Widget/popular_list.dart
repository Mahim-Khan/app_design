import 'package:app_design/Widget/product_card.dart';
import 'package:flutter/material.dart';
import '../Utils/const.dart';

class PopularList extends StatelessWidget {
  const PopularList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 14, right: 14),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               const Text(
                kPopular,style: TextStyle(fontSize: 16,
                  fontWeight: FontWeight.w700),
              ),
              TextButton(onPressed: () {},
                child: const Text(kSeeBtn),),
            ],
          ),
          Row(
            children: const [
               ProductCard(
                 images: Images.sh4,
                 title: 'Nike Jordan',
                 price: '\$493.00',),
              SizedBox(width: 18,),
              ProductCard(
                images: Images.sh3,
                title: 'Nike Air Max',
                price: '\$897.99',),
            ],
          ),

        ],
      ),
    );
  }
}

