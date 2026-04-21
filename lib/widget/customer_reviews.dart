import 'package:flutter/material.dart';
import 'package:localfixers/provider/local_services.dart';
import 'package:localfixers/widget/custom_container.dart';
import 'package:provider/provider.dart';

class CustomerReviews extends StatelessWidget {
  const CustomerReviews({super.key});

  @override
  Widget build(BuildContext context) {
    final customerProvider = Provider.of<LocalServices>(context);
    final customerReview = customerProvider.serviceList;
    return SizedBox(
      height: 240,
      child: ListView.builder(
        itemCount: customerReview.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final customer = customerReview[index];
          return SizedBox(
            width: 380,
            child: CustomContainer(
              Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue[100],
                      child: Text(
                        customer.sellername.split(' ').map((e) => e[0]).join().toUpperCase(),
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF0D2C6E),
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    title: Text(
                      customer.sellername
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
          );
        },
      ),
    );
  }
}