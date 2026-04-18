import 'package:flutter/material.dart';
import 'package:localfixers/widget/curated_categories.dart';
import 'package:localfixers/widget/featured_experts.dart';
import 'package:localfixers/widget/recommendation.dart';
import 'package:localfixers/widget/service_search.dart';

class BuyerHomeScreens extends StatelessWidget {
  const BuyerHomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          child: Icon(Icons.person),
        ),
        title: Text(
          'Local Fixers'
        ),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.notifications)
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Your world,',
                    style: TextStyle(
                      fontSize: 35,
                      color: Color(0xFF00174A),
                      fontWeight: FontWeight.bold
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '\neffortlessly\nmanaged',
                        style: TextStyle(
                          color: Color(0xFF005234)
                        )
                      ),
                    ]
                  ),
                ),
                const SizedBox(height: 20,),
                ServiceSearch(),
                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Curated Categories',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF00174A),
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    TextButton(
                      onPressed: () {}, 
                      child: Text(
                        'View All',
                        style: TextStyle(
                          color: Color(0xFF005234),
                          fontWeight: FontWeight.bold
                        ),
                      )
                    )
                  ],
                ),
                CuratedCategories(),
                const SizedBox(height: 20,),
                Text(
                  'Featured Experts',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF00174A),
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 10,),
                FeaturedExperts(),
                const SizedBox(height: 20,),
                Text(
                  'Recommended For You',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF00174A),
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 10,),
                Recommendation()
              ],
            ),
          ),
        ),
      ),
    );
  }
}