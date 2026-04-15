import 'package:flutter/material.dart';
import 'package:localfixers/provider/local_services.dart';
import 'package:localfixers/screens/service_listing_detail_screen.dart';
import 'package:provider/provider.dart';

class ServiceList extends StatelessWidget {
  const ServiceList({super.key});

  @override
  Widget build(BuildContext context) {
    final serviceProvider = Provider.of<LocalServices>(context);
    final serviceListing = serviceProvider.serviceList;

    return SizedBox(
      height: 1400,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: serviceListing.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final serviceChoice = serviceListing[index];
          return Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        serviceChoice.featuredImage,
                      )
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context, 
                            MaterialPageRoute(
                              builder: (_) => ServiceListingDetailScreen(
                                serviceChoice.featuredImage,
                                serviceChoice.title,
                                serviceChoice.rating,
                                serviceChoice.price,
                                serviceChoice.description
                              )
                            )
                          );
                        },
                        child: Text(
                          serviceChoice.title,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF00174A)
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        serviceChoice.description,
                        style: TextStyle(
                          fontSize: 16
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.star, color: Color(0xFF005234),),
                              Text(
                                serviceChoice.rating.toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                                ),
                              )
                            ],
                          ),
                          Text(
                           '\$${serviceChoice.price.toString()}',
                           style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF00174A),
                            fontWeight: FontWeight.bold
                           ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}