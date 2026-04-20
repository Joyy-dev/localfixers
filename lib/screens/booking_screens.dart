import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:localfixers/widget/custom_container.dart';
//import 'package:localfixers/widget/reservation_summary.dart';
import 'package:localfixers/widget/schedule_calendar.dart';
import 'package:localfixers/widget/schedule_time.dart';

class BookingScreens extends StatelessWidget {
  const BookingScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirm schedule'),
        actions: [
          CircleAvatar(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: ElevatedButton(
          onPressed: () {
            FirebaseAuth.instance.signOut();
          }, 
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF00174A),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
            )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Continue to payment'),
              Icon(Icons.arrow_forward)
            ],
          )
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Schedule your service',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xFF00174A),
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 5,),
                Text(
                  'Choose a preferred date and time for your concierge appointment.',
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Service Location'.toUpperCase(),
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey[400],
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    TextButton(
                      onPressed: () {}, 
                      child: Text(
                        'Change Address',
                        style: TextStyle(
                          color: Color(0xFF005234),
                          fontWeight: FontWeight.bold
                        ),
                      )
                    )
                  ],
                ),
                CustomContainer(
                  ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.location_pin),
                    ),
                    title: Text(
                      'The Grand Residence',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFF005234),
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    subtitle: Text(
                      '42nd Penthouse, skyline Blvd, Metropolis',
                      style: TextStyle( 
                        fontSize: 16,
                        color: Color(0xFF00174A),
                      ),
                    ),
                  )
                ),
                SizedBox(height: 10,),
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
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFF00174A)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Estimated Total'.toUpperCase(),
                            style: TextStyle(
                              color: Colors.white60,
                              letterSpacing: 1,
                              fontSize: 13
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(99, 67, 92, 159),
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Text(
                              'Premium Service'.toUpperCase(),
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          )
                        ],
                      ),
                      Text(
                        '\$245.00',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 40,),
                      Row(
                        children: [
                          Icon(Icons.timer, color: Colors.white, size: 19,),
                          const SizedBox(width: 5,),
                          Text(
                            '2.5 Hours',
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                          const SizedBox(width: 15,),
                          Icon(Icons.circle, color: Colors.blue[100], size: 5,),
                          const SizedBox(width: 15,),
                          Icon(Icons.security, color: Colors.white, size: 19,),
                          const SizedBox(width: 5,),
                          Text(
                            'Insured',
                            style: TextStyle(
                              color: Colors.white
                            ),
                          )
                        ],
                      )
                    ],
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