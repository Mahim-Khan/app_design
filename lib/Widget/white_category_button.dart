import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:velocity_x/velocity_x.dart';

class WhiteCategoryButton extends StatelessWidget {
  const WhiteCategoryButton({Key? key,
    required this.updateCategory,
    required this.images})
      : super(key: key);

  final Function() updateCategory;
  final String images;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 47,
      height: 47,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 24)
          ]),
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: updateCategory,
        child: SvgPicture.asset(images).p(10),
      ),
    );
  }
}