import 'package:flutter/material.dart';

class Department extends StatelessWidget {
  const Department({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Color.fromARGB(62, 171, 170, 177),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xFFDBE1FF),
                      radius: 25,
                      child: Icon(
                        Icons.cleaning_services, 
                        color: Color(0xFF004493), 
                        size: 30,
                      )
                    ),
                    SizedBox(height: 15,),
                    Text(
                      'Cleaning',
                      style: TextStyle(
                        color: Color(0xFF00174A),
                        fontSize: 23,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      '24\nProfessionals',
                      style: TextStyle(
                        color: Color(0xFF5e5e63),
                        fontSize: 14
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 30,),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Color.fromARGB(62, 171, 170, 177),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(160, 123, 250, 186),
                      radius: 25,
                      child: Icon(
                        Icons.plumbing, 
                        color: Color(0xFF002112), 
                        size: 30,
                      )
                    ),
                    SizedBox(height: 15,),
                    Text(
                      'Plumbing',
                      style: TextStyle(
                        color: Color(0xFF00174A),
                        fontSize: 23,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      '18\nProfessionals',
                      style: TextStyle(
                        color: Color(0xFF5e5e63),
                        fontSize: 14
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Color.fromARGB(62, 171, 170, 177),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.orange[100],
                      radius: 25,
                      child: Icon(
                        Icons.electrical_services, 
                        color: Colors.brown[800], 
                        size: 30,
                      )
                    ),
                    SizedBox(height: 15,),
                    Text(
                      'Electrician',
                      style: TextStyle(
                        color: Color(0xFF00174A),
                        fontSize: 23,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      '12\nProfessionals',
                      style: TextStyle(
                        color: Color(0xFF5e5e63),
                        fontSize: 14
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 30,),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Color.fromARGB(62, 171, 170, 177),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(160, 123, 250, 186),
                      radius: 25,
                      child: Icon(
                        Icons.grass, 
                        color: Color(0xFF002112), 
                        size: 30,
                      )
                    ),
                    SizedBox(height: 15,),
                    Text(
                      'Gardening',
                      style: TextStyle(
                        color: Color(0xFF00174A),
                        fontSize: 23,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      '15\nProfessionals',
                      style: TextStyle(
                        color: Color(0xFF5e5e63),
                        fontSize: 14
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}