import 'package:flutter/material.dart';
import '../Utils/const.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.images,
    required this.title,
    required this.price,
  });
  final String images;
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 155,

      decoration:  const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
          topRight: Radius.circular(10),
          topLeft: Radius.circular(10),
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 14.0),
        child: Stack(
          children: [
            Positioned(
                top: 6,
                right: 14,
                child: Container(
                  height: 90,
                  width: 120,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(images),
                        fit: BoxFit.fitWidth,
                      )),
                )),
            Positioned(
              bottom: 52,
              left: 0,
              child: Text(kBestS,
                  style:TextStyle(color: Colors.blue.shade400,
                    fontSize: 12,)),
            ),
            Positioned(
              bottom: 34,
              left: 0,
              child: Text(title,
                style: const TextStyle(color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 14),),
            ),
            Positioned(
              bottom: 10,
              left: 0,
              child: Text(price,
                  style:const TextStyle(color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.bold)),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                  color: Colors.blue.shade400,
                ),
                width: 35,
                height: 30,
                child: const Icon(Icons.add,
                  color: Colors.white,),
              ),
            ),

          ],
        ),
      ),
    );
  }
}