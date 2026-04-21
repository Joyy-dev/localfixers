import 'package:flutter/material.dart';


class ServiceBadge extends StatelessWidget {
  const ServiceBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.shield_moon, color: Color(0xFF001A41),),
                Text(
                  'Insured Shell',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF001A41),
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  'Full comprehensive coverage for all onsite interactions'
                )
              ],
            ),
          ),
        ),
        const SizedBox(width: 20,),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.watch_later, color: Color(0xFF001A41),),
                Text(
                  'Rapid Sync',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF001A41),
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  '60-minute response time for all dynamic scheduling'
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}