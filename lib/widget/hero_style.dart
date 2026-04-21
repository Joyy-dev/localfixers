import 'package:flutter/material.dart';

class HeroStyle extends StatelessWidget {
  final String image;
  final String title;
  final double price;
  final double rating;
  const HeroStyle(this.image, this.title, this.price, this.rating,{super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: double.infinity,
          height: 400,
          decoration: BoxDecoration(
            color: Color(0xFF005234),
            image: DecorationImage(
              fit: BoxFit.cover,
              opacity: 0.7,
              image: AssetImage(image)
            ),
          ),
        ),
          Positioned(
            left: 1,
            right: 1,
            bottom: -100,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.only(bottom: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(110, 45, 45, 54),
                      blurRadius: 3,
                      blurStyle: BlurStyle.outer,
                      offset: Offset(0, 5),
                      spreadRadius: 1
                    )
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                                decoration: BoxDecoration(
                                  color: Color(0xFF5DDDA1),
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                child: Text(
                                  'Premium Service'.toUpperCase()
                                ),
                              ),
                              Text(
                                title,
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color(0xFF0D2C6E),
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20,),
                        Expanded(
                          flex: 0,
                          child: Column(
                            children: [
                              Text(
                                '\$$price',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF0D2C6E),
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                'Per hour'
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    
                    ListTile(
                      leading: CircleAvatar(),
                      title: Text(
                        'Alex Thompson',
                        style: TextStyle(
                          fontSize: 25,
                          color: Color(0xFF0D2C6E),
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      subtitle: Text(
                        'Elite Service Partner',
                        style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}