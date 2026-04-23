import 'package:flutter/material.dart';

class BookingHistoryScreens extends StatelessWidget {
  const BookingHistoryScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          child: Icon(Icons.person),
        ),
        title: Text('Local Fixers'),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.notifications)
          )
        ],
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bookings',
                style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF00174A),
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                'Manage your premium concierge services and upcoming experiences',
                style: TextStyle(
                  fontSize: 17
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}