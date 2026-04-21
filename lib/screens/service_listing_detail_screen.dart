import 'package:flutter/material.dart';
import 'package:localfixers/provider/local_services.dart';
import 'package:localfixers/widget/bottom_navigation.dart';
import 'package:localfixers/widget/custom_container.dart';
import 'package:localfixers/widget/customer_reviews.dart';
import 'package:localfixers/widget/hero_style.dart';
import 'package:localfixers/widget/service_badge.dart';
import 'package:provider/provider.dart';

class ServiceListingDetailScreen extends StatelessWidget {
  final int index;
  const ServiceListingDetailScreen(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    final serviceProvider = Provider.of<LocalServices>(context);
    final serviceListing = serviceProvider.serviceList;
    final services = serviceListing[index];

    return Scaffold(
      appBar: AppBar(
        title: Text('Fixora'),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.favorite_border)
          ),
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.notifications)
          )
        ],
      ),
      bottomNavigationBar: BottomNavigation(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeroStyle(services.featuredImage, services.title, services.price, services.rating),
              SizedBox(height: 80,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About the Service',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF0D2C6E),
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      services.description,
                      style: TextStyle(
                        fontSize: 19
                      ),
                    ),
                    const SizedBox(height: 20,),
                    ServiceBadge(),
                    const SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Service Highlights',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF001A41),
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          'Included',
                          style: TextStyle(
                            color: Color(0xFF005234),
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10,),
                    CustomContainer(
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: const Color.fromARGB(134, 105, 240, 175),
                          child: Icon(Icons.car_repair, color: Color(0xFF005234),),
                        ),
                        title: Text(
                          'Executive Transit Management',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      )
                    ),
                    CustomContainer(
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: const Color.fromARGB(134, 105, 240, 175),
                          child: Icon(Icons.event_available, color: Color(0xFF005234),),
                        ),
                        title: Text(
                          'Priority Venue Access',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      )
                    ),
                    CustomContainer(
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: const Color.fromARGB(134, 105, 240, 175),
                          child: Icon(Icons.security, color: Color(0xFF005234),),
                        ),
                        title: Text(
                          'Discrete Presence Detail',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      )
                    ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Customers Review',
                        style: TextStyle(
                          fontSize: 20,
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
                  const SizedBox(height: 10,),
                  CustomerReviews(),
                  const SizedBox(height: 20,),
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