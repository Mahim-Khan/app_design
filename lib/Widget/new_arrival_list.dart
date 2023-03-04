import 'package:flutter/material.dart';
import '../Utils/const.dart';

class NewArrivalList extends StatelessWidget {
  const NewArrivalList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          left: 14, right: 14, top: 4, bottom: 14),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                kNewA,
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w700),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(kSeeBtn),
              ),
            ],
          ),
          Container(
            height: 110,
            width: 310,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(13),
                bottomRight: Radius.circular(13),
                topRight: Radius.circular(13),
                topLeft: Radius.circular(13),
              ),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Stack(
                children: [
                  Positioned(
                      right: 10,
                      bottom: 8,
                      child: Container(
                        height: 90,
                        width: 150,
                        decoration:  const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(Images.sh2),
                              fit: BoxFit.fitHeight,
                            )),
                      )),
                  Positioned(
                    top: 16,
                    left: 0,
                    child: Text(kBestC,
                        style: TextStyle(
                          color: Colors.blue.shade400,
                          fontSize: 12,
                        )),
                  ),
                  const Positioned(
                    top: 34,
                    left: 0,
                    child: Text(
                      'Nike Air Jordan',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                  ),
                  const Positioned(
                    top: 66,
                    left: 0,
                    child: Text('\$849.69',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}