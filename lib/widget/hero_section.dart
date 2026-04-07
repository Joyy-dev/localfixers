import 'package:flutter/material.dart';
import 'package:localfixers/widget/service_search.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),  
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: Alignment.bottomCenter,
          colors: [
            Color(0xFF004493),
            Color(0xFF00174A),
          ]
        ),
        borderRadius: BorderRadius.circular(30)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: 'Excellence\nDelivered\n',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40
              ),
            children: [
              TextSpan(
                text: 'To Your\nDoorstep',
                style: TextStyle(
                  color: Color(0xFF5DDDA1),
                  fontWeight: FontWeight.bold,
                  fontSize: 40
                )
              )
            ]
          )
        ),
        SizedBox(height: 10,),
        Text(
          'Connecting you with elite local professionals for your home\'s mostessential needs.',
            style: TextStyle(
              color: Color(0xFFDBE1FF),
              fontSize: 18
            ),
          ),
          SizedBox(height: 30,),
          ServiceSearch()
        ],
      ),
    );
  }
}