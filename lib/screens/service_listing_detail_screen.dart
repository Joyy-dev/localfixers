import 'package:flutter/material.dart';
import 'package:localfixers/widget/custom_container.dart';
import 'package:localfixers/widget/hero_style.dart';

class ServiceListingDetailScreen extends StatelessWidget {
  final String image;
  final String title;
  final double rating;
  final String description;
  const ServiceListingDetailScreen(this.image, this.title, this.rating, this.description, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fixora'),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.share)
          ),
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.favorite_border)
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeroStyle(image, title, rating),
              SizedBox(height: 60,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About the Service',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xFF0D2C6E),
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: 19
                      ),
                    ),
                    SizedBox(height: 15,),
                    CustomContainer(
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.eco, color: Color(0xFF005234), size: 30,),
                          Text(
                            'Eco-Friendly',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF0D2C6E),
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            'Non-toxic, pet-safe materials only',
                            style: TextStyle(
                              fontSize: 18
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    CustomContainer(
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.alarm, color: Color(0xFF005234), size: 30,),
                          Text(
                            'Efficient',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF0D2C6E),
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            'Thorough results in 4 - 6 hours',
                            style: TextStyle(
                              fontSize: 18
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    CustomContainer(
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.security, color: Color(0xFF005234), size: 30,),
                        Text(
                          'Insured',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF0D2C6E),
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          'Full liability coverage included',
                          style: TextStyle(
                            fontSize: 18
                          ),
                        )
                      ],
                    ),
                  )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}