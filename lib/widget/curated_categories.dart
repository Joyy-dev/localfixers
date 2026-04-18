import 'package:flutter/material.dart';

class CuratedCategories extends StatelessWidget {
  const CuratedCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 220,
            padding: EdgeInsets.all(8),
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                fit: BoxFit.cover,
                opacity: 0.5,
                image: AssetImage('assets/images/water.png')
              ),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Text(
              'Cleaning',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
        const SizedBox(width: 15,),
        Expanded(
          child: Column(
            children: [
              Container(
                width: 300,
                height: 100,
                padding: EdgeInsets.all(8),
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    opacity: 0.4,
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/plumber.png'))
                ),
                child: Text(
                  'Wellness',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      padding: EdgeInsets.all(8),
                      alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          opacity: 0.5,
                          image: AssetImage('assets/images/water.png')
                        ),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text(
                        'Cleaning',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15,),
                  Expanded(
                    child: Container(
                      height: 100,
                      padding: EdgeInsets.all(8),
                      alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          opacity: 0.5,
                          image: AssetImage('assets/images/water.png')
                        ),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text(
                        'Cleaning',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}