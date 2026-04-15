import 'package:flutter/material.dart';

class ReservationSummary extends StatelessWidget {
  const ReservationSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      decoration: BoxDecoration(
        color: Color(0xFF00174A),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Resevation Summary',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 0),
            leading: CircleAvatar(
              backgroundColor: Color.fromARGB(94, 67, 92, 159),
              child: Icon(Icons.calendar_month, color: Color(0xFF3CC187),),
            ),
            title: Text(
              'DATE',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white60
              ),
            ),
            subtitle: Text(
              'October 7, 2021',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 0),
            leading: CircleAvatar(
              backgroundColor: Color.fromARGB(94, 67, 92, 159),
              child: Icon(Icons.access_time_filled_sharp, color: Color(0xFF3CC187),),
            ),
            title: Text(
              'TIME SLOT',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white60
              ),
            ),
            subtitle: Text(
              '01:30 PM - 02:30 PM',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 0),
            leading: CircleAvatar(
              backgroundColor: Color.fromARGB(94, 67, 92, 159),
              child: Icon(Icons.price_change, color: Color(0xFF3CC187),),
            ),
            title: Text(
              'PRICING',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white60
              ),
            ),
            subtitle: Text(
              '\$120.00',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            )
          ),
          const SizedBox(height: 30,),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF5DDDA1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ElevatedButton(
              onPressed: () {}, 
              style: ElevatedButton.styleFrom(
                foregroundColor: Color(0xFF002112),
                backgroundColor: Color(0xFF5DDDA1),
                
              ),
              child: Text(
                'Confirm Booking',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
              )
            ),
          ),
          const SizedBox(height: 15,),
          Text(
            'By confirming you agree to our 24-hour cancellation policy and terms of service.',
            style: TextStyle(
              fontSize: 13,
              color: Colors.white38
            ),
          )
        ],
      ),
    );
  }
}