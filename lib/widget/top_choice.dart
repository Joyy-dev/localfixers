import 'package:flutter/material.dart';

class TopChoice extends StatelessWidget {
  const TopChoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xFF006c46),
        image: DecorationImage(
          fit: BoxFit.cover,
          opacity: 0.4,
          image: AssetImage(
            'assets/images/clean.png',
          )
        ),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(
              color: Color(0xFF7bfabb),
              borderRadius: BorderRadius.circular(20)
            ),
            child: Text(
              'TOP CHOICE',
              style: TextStyle(
                fontSize: 13,
                color: Color(0xFF003823),
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(height: 10,),
          Text(
            'Elite Home Sanctuary Package',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 5,),
          Text(
            'comprehensive deep cleaning by oour certified luxury housekeeping team',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white
            ),
          ),
          SizedBox(height: 18,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.star, color: Color(0xFF7bfabb),),
                  Text(
                    '4.9',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(width: 5,),
                  Text(
                    '(124\nreviews)',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  )
                ],
              ),
              Text(
                'From \$180',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Color(0xFF00174A),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
                onPressed: () {}, 
                child: Text('Book Now')
              )
            ],
          )
        ],
      ),
    );
  }
}