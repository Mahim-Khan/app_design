import 'package:app_design/Screens/my_home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Widget/bottom_bar_button.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  late List<String> _titlesList;
  int _currentPage = 0;
  late List<Widget> _pages;

  updateCurrentPage(int newPage) {
    setState(() {
      _currentPage = newPage;
    });
  }

  @override
  void initState() {
    _titlesList = ['Shoes', '1', '2', '3', 'Mahim Khan'];
    _pages = [
      const MyHomePage(),
      const Center(child: Text('2')),
      const Center(child: Text('3')),
      const Center(child: Text('4')),
      const Center(child: Text('5')),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_pages[_currentPage],
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          decoration: const BoxDecoration(
            color: Colors.transparent
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomBarButton(_currentPage, 0, Icons.home_outlined,
                  updateCurrentPage),
              BottomBarButton(_currentPage, 1, Icons.favorite_border,
                  updateCurrentPage),
              const SizedBox(
                width: 50,
              ),
              BottomBarButton(_currentPage, 3,
                  CupertinoIcons.bell, updateCurrentPage),
              BottomBarButton(_currentPage, 4,
                  CupertinoIcons.person, updateCurrentPage),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.shopping_bag_outlined,),
        onPressed: () => updateCurrentPage(2),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
}

