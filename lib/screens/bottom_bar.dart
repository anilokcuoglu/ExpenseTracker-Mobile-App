import 'package:expense_tracker_app/screens/expenses_screen.dart';
import 'package:expense_tracker_app/screens/transactions_screen.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:expense_tracker_app/utils/app_styles.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}
int selectedIndex = 0;

class _BottomBarState extends State<BottomBar> {
  static final List<Widget>_widgetOptions = <Widget> [
    const ExpenseScreen(),            // const Text ("Home"),
    const TransactionScreen(),
    const Text ("Reports"),
    const Text ("Settings")
  ];


  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int index){
      setState((){
        selectedIndex = index;
      });
      // print('Tapped index is ${selectedIndex}');
      // print("Tapped index is " + selectedIndex.toString());
    }
    return Scaffold(
      body: Center(
          child: _widgetOptions[selectedIndex]
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.black87,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        type: BottomNavigationBarType.fixed,
        // shifting is default one
        unselectedItemColor: const Color(0xFF526480),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_bank_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_bank_filled),
              label: "Expenses"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_arrow_swap_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_arrow_swap_filled),
              label: "Transactions"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_arrow_trending_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_arrow_trending_filled),
              label: "Reports"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_settings_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_settings_filled),
              label: "Settings"),
        ],
      ),
    );
  }
}