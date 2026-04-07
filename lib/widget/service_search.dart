import 'package:flutter/material.dart';

class ServiceSearch extends StatelessWidget {
  const ServiceSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      leading: Icon(Icons.search),
      hintText: 'What services do you need?',
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15) 
        )
      ),
      trailing: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF00174A),
            foregroundColor: Color(0xFFEEF0FF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            )
          ),
          onPressed: () {}, 
          child: Text('Find Service')
        )
      ],
    );
  }
}