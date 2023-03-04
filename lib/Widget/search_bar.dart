import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Utils/const.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Container(
            margin: const EdgeInsets.only(left: 18,right: 18),
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Row(
                      children: const [
                        Icon(CupertinoIcons.search,
                          color: Colors.grey,size: 20,),
                        SizedBox(width: 18,),
                        Flexible(
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 5),
                            child: TextField(
                              style: TextStyle(fontSize: 14),
                              decoration: InputDecoration(
                                  hintText: kLookFShoe,
                                  border: InputBorder.none),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}