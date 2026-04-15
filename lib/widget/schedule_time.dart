import 'package:flutter/material.dart';

class ScheduleTime extends StatelessWidget {
  const ScheduleTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Row(
            children: [
              Icon(Icons.sunny, size: 17,),
              Text(
                'MORNING',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
          subtitle: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                margin: EdgeInsets.symmetric(vertical: 11.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Text(
                  '09:00AM',
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              const SizedBox(width: 10,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                margin: EdgeInsets.symmetric(vertical: 11.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Text(
                  '10:30AM',
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
          
            ],
          ),
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Row(
            children: [
              Icon(Icons.sunny, size: 17,),
              Text(
                'AFTERNOON',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
          subtitle: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                margin: EdgeInsets.symmetric(vertical: 11.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Text(
                  '09:00AM',
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              const SizedBox(width: 10,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                margin: EdgeInsets.symmetric(vertical: 11.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Text(
                  '10:30AM',
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ],
          ),
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Row(
            children: [
              Icon(Icons.sunny, size: 17,),
              Text(
                'EVENING',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
          subtitle: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                margin: EdgeInsets.symmetric(vertical: 11.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Text(
                  '09:00AM',
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              const SizedBox(width: 10,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                margin: EdgeInsets.symmetric(vertical: 11.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Text(
                  '10:30AM',
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
          
            ],
          ),
        ),
      ],
    );
  }
}