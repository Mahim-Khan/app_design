import 'package:flutter/material.dart';
import '../Utils/const.dart';

class ScreenAppBar extends StatelessWidget {
  const ScreenAppBar({
    Key? key,
    required this.onPressed,
    required this.onTap,
    required this.isSelect,
  }) : super(key: key);
  final bool isSelect;
  final VoidCallback onPressed;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 14,right: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: IconButton(
                  color: Colors.black,
                  icon: const Icon(Icons.menu_outlined),
                  onPressed: onPressed,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    const Text(kLocation,
                      style: TextStyle(fontSize: 14,color: Colors.black26),),
                    Row(
                      children: [
                        Icon(Icons.location_on_rounded,
                          color: kRed.shade300,size: 15,),
                        const SizedBox(width: 2,),
                        const Text(kCity,
                            style: TextStyle(fontSize: 16,
                                fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ],
                ),
              ),

              Stack(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      icon: const Icon(Icons.shopping_bag_outlined,
                        size: 20,color: Colors.black,),
                      onPressed: onTap,
                    ),
                  ),
                  Positioned(
                      top: 0,
                      right: 4,
                      child: CircleAvatar(
                        backgroundColor: kRed.shade300,
                        radius: 4,
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}