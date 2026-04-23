import 'package:flutter/material.dart';
import 'package:localfixers/screens/buyer/booking_history_screens.dart';
import 'package:localfixers/screens/buyer/buyer_home_screens.dart';

class BuyerBottomBar extends StatefulWidget {
  const BuyerBottomBar({super.key});

  @override
  State<BuyerBottomBar> createState() => _BuyerBottomBarState();
}

class _BuyerBottomBarState extends State<BuyerBottomBar> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    BuyerHomeScreens(),
    BookingHistoryScreens(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 1,
        backgroundColor: Colors.white,
        iconSize: 25,
        selectedItemColor: Color(0xFF00174A),
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold
        ),
        currentIndex: _selectedIndex,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Explore'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Bookings'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: 'Chat'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Reviews'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile'
          )
        ]
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
    );
  }
}