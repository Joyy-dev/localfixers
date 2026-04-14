import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: BoxBorder.all(
                  color: Color(0xFF001A41),
                  width: 2
                ),
                borderRadius: BorderRadius.circular(10)
              ),
              child: ElevatedButton(
                onPressed: () {}, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, 
                  elevation: 0,           
                ),
                child: Text(
                  'Contact Alex',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF001A41),
                    fontWeight: FontWeight.bold
                  ),textAlign: TextAlign.center,
                )
              ),
            ),
          ),
          SizedBox(width: 20,),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Color(0xFF001A41),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color(0xFF001A41),
                  width: 1
                )
              ),
              child: ElevatedButton(
                onPressed: () {}, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF001A41),
                  elevation: 0
                ),
                child: Text(
                  'Book Service',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ), textAlign: TextAlign.center,
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}