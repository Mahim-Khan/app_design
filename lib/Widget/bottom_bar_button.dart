import 'package:flutter/material.dart';

class BottomBarButton extends StatelessWidget {
  const BottomBarButton(
      this.currentPage, this.index, this.icon, this.updatePage,
      {Key? key})
      : super(key: key);
  final IconData icon;
  final int currentPage;
  final int index;
  final Function updatePage;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 40,
      child: MaterialButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          padding: const EdgeInsets.all(0),
          onPressed: () => updatePage(index),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            child: Icon(
              icon,
              color: index == currentPage
                  ? Colors.blue.shade400
                  : Colors.grey,
            ),
          )),
    );
  }
}