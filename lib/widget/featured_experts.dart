import 'package:flutter/material.dart';
import 'package:localfixers/provider/local_services.dart';
import 'package:localfixers/widget/custom_container.dart';
import 'package:provider/provider.dart';

class FeaturedExperts extends StatelessWidget {
  const FeaturedExperts({super.key});

  @override
  Widget build(BuildContext context) {
    final expertsProvider = Provider.of<LocalServices>(context);
    final expertList = expertsProvider.serviceList;

    return SizedBox(
      height: 200,
      //width: 500,
      child: ListView.builder(
        itemCount: expertList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final experts = expertList[index];
          return SizedBox(
            width: 400,
            child: CustomContainer(
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(),
                      const SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            experts.sellername,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.star, size: 20, color: Color(0xFF005234),),
                              Text(
                                experts.rating.toString(),
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 13, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.greenAccent[400],
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text(
                      experts.serviceCategory
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    experts.description,
                    style: TextStyle(
                      fontSize: 17
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