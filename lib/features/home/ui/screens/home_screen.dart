import 'package:flutter/material.dart';
import 'package:mahfazty/core/theming/my_colors.dart';
import 'package:mahfazty/features/transactions/screens/transactions_screen.dart';

import '../widgets/home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    const Home(),
    const TransactionsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 0.5],
            colors: [MyColors.redColor, MyColors.navyColor],
          ),
        ),
        child: screens[currentIndex],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
        ),
        child: Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedIconTheme: const IconThemeData(color: MyColors.yellowColor),
            unselectedIconTheme: const IconThemeData(color: Colors.white),
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 35.0),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.analytics, size: 35.0),
                label: 'Transactions',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
