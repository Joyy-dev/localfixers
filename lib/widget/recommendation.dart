import 'package:flutter/material.dart';
import 'package:localfixers/provider/local_services.dart';
import 'package:localfixers/screens/booking_screens.dart';
import 'package:localfixers/screens/service_listing_detail_screen.dart';
import 'package:provider/provider.dart';

class Recommendation extends StatelessWidget {
  const Recommendation({super.key});

  @override
  Widget build(BuildContext context) {
    final recommendationProvider = Provider.of<LocalServices>(context);
    final recommendations = recommendationProvider.serviceList;

    return SizedBox(
      height: 790,
      child: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          final recommend = recommendations[index];
          return Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(recommend.featuredImage)
                    )
                  ),
                ),
                const SizedBox(height: 29,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            recommend.serviceCategory.toUpperCase(),
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF005234),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(45, 0, 23, 74),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Text(
                              '\$${recommend.price.toString()}',
                              style: TextStyle(
                                color: Color(0xFF00174A),
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          )
                        ],
                      ),
                      Text(
                        recommend.title,
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF00174A),
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 8,),
                      Text(
                        recommend.description,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context, 
                                MaterialPageRoute(builder: (_) => BookingScreens(
                                  recommend.featuredImage, 
                                  recommend.title, 
                                  recommend.price
                                ))
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF00174A),
                              foregroundColor: Colors.white
                            ), 
                            child: Text('Book Session')
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context, 
                                MaterialPageRoute(builder: (_) => ServiceListingDetailScreen(
                                  recommend.featuredImage, 
                                  recommend.title, 
                                  recommend.rating, 
                                  recommend.price, 
                                  recommend.description
                                ))
                              );
                            }, 
                            child: Row(
                              children: [
                                Text('Details'),
                                Icon(Icons.arrow_forward)
                              ],
                            )
                          )
                        ],
                      ),
                      const SizedBox(height: 10,)
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}