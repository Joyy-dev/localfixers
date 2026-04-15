import 'package:flutter/material.dart';
import 'package:localfixers/widget/custom_container.dart';
import 'package:localfixers/widget/reservation_summary.dart';
import 'package:localfixers/widget/schedule_calendar.dart';
import 'package:localfixers/widget/schedule_time.dart';

class BookingScreens extends StatelessWidget {
  final String image;
  final String title;
  final double price;
  const BookingScreens(this.image, this.title, this.price, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirm schedule'),
        actions: [
          CircleAvatar(),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomContainer(
                  ListTile(
                    leading: Image.asset(image),
                    title: Text(
                      'PREMIUM SERVICE',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFF005234),
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    subtitle: Text(
                      title,
                      style: TextStyle(
                        fontSize: 19,
                        color: Color(0xFF00174A),
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    trailing: Text(
                      '\$${price.toString()}',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF00174A),
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ),
                SizedBox(height: 20,),
                ScheduleCalendar(),
                Text(
                  'Choose a Time slot',
                  style: TextStyle(
                    fontSize: 19,
                    color: Color(0xFF00174A),
                    fontWeight: FontWeight.bold
                  ),
                ),
                ScheduleTime(),
                const SizedBox(height: 20,),
                ReservationSummary(),
                const SizedBox(height: 20,),
                ListTile(
                  leading: CircleAvatar(),
                  title: Text(
                    'YOUR SPECIALIST',
                    style: TextStyle(
                      fontSize: 13
                    ),
                  ),
                  subtitle: Text(
                    'Dr Elena Rodriguez',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF00174A),
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  trailing: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.message, color: Color(0xFF002112),),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}