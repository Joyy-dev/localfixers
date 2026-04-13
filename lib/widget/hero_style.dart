import 'package:flutter/material.dart';

class HeroStyle extends StatelessWidget {
    final String image;
  final String title;
  final double rating;
  const HeroStyle(this.image, this.title, this.rating,{super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: double.infinity,
          height: 450,
          decoration: BoxDecoration(
            color: Color(0xFF005234),
            image: DecorationImage(
              fit: BoxFit.cover,
              opacity: 0.7,
              image: AssetImage(image)
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 45),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 11,vertical: 7),
                decoration: BoxDecoration(
                  color: Color(0xFF5DDDA1),
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.verified, color: Color(0xFF005234),),
                    SizedBox(width: 5,),
                    Text(
                     'Highly Rated Service',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                          color: Color(0xFF005234),
                          fontSize: 16
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 38,
                    color: Colors.white,
                    height: 1,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 1,
            right: 1,
            bottom: -30,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading: CircleAvatar(),
                  title: Text(
                    'Alex Thompson',
                    style: TextStyle(
                      fontSize: 25,
                      color: Color(0xFF0D2C6E),
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  subtitle: Text(
                    'Elite Service Partner . 5+ Years Exp',
                    style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}