import 'package:flutter/material.dart';
import 'package:localfixers/widget/appdrawer.dart';
import 'package:localfixers/widget/hero_section.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Local Fixers'),
        elevation: 3,
        actions: [
          CircleAvatar(
            child: Icon(Icons.person),
          )
        ],
      ),
      drawer: Appdrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeroSection(),
              SizedBox(height: 35,),
              Text(
                'DEPARTMENTS',
                style: TextStyle(
                  color: Color(0Xff005234),
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Browse\nCategories',
                    style: TextStyle(
                      fontSize: 28,
                      height: 1.2,
                      color: Color(0xFF00174A),
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  TextButton(
                    onPressed: () {}, 
                    child: Text(
                      'View All',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF00174A)
                      ),
                    )
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}