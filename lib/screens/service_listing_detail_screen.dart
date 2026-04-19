import 'package:flutter/material.dart';
import 'package:localfixers/widget/bottom_navigation.dart';
import 'package:localfixers/widget/custom_container.dart';
import 'package:localfixers/widget/hero_style.dart';

class ServiceListingDetailScreen extends StatelessWidget {
  final String image;
  final String title;
  final double rating;
  final double price;
  final String description;
  const ServiceListingDetailScreen(this.image, this.title, this.rating, this.price, this.description, {super.key});

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
      bottomNavigationBar: BottomNavigation(),
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
                          Icon(Icons.timer, color: Color(0xFF005234), size: 30,),
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
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Client Perspectives',
                        style: TextStyle(
                          fontSize: 25,
                          color: Color(0xFF0D2C6E),
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      TextButton(
                        onPressed: () {}, 
                        child: Text(
                          'See all',
                          style: TextStyle(
                            color: Color(0xFF001A41),
                            fontSize: 16
                          ),
                        )
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  CustomContainer(
                    Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.blue[100],
                            child: Text(
                              'MS',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFF0D2C6E),
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          title: Text(
                            'Marcus Sterling'
                          ),
                          subtitle: Row(
                            children: [
                              Icon(Icons.star, color: Color(0xFF005234), size: 20,),
                              Icon(Icons.star, color: Color(0xFF005234), size: 20,),
                              Icon(Icons.star, color: Color(0xFF005234), size: 20,),
                              Icon(Icons.star, color: Color(0xFF005234), size: 20,),
                              Icon(Icons.star, color: Color(0xFF005234), size: 20,),
                            ],
                          ),
                          trailing: Text(
                            '2 days ago'
                          ),
                        ),
                        Text(
                          '"The attention to detail was beyond anything I\'ve experienced before. Every surface gleams, and the house feels fresh without the harsh chemical smell"',
                          style: TextStyle(
                            fontSize: 18,
                            fontStyle: FontStyle.italic,
                          ),
                        )
                      ],
                    )
                  ),
                  SizedBox(height: 20,),
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