import 'package:flutter/material.dart';

class TabSwitcher extends StatelessWidget {
  final String title;
  final int index;
  final int selectedIndex;
  final Function(int) onTap;
  const TabSwitcher({required this.title, required this.index, required this.selectedIndex, required this.onTap, super.key});


  @override
  Widget build(BuildContext context) {
    final isSelected = selectedIndex == index;
    return TextButton(
      onPressed: () => onTap(index), 
      style: TextButton.styleFrom(
        padding: EdgeInsets.all(15),
        backgroundColor: isSelected ? Colors.white : null,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(8)
        )
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: isSelected ? Colors.black : Colors.grey
        ), textAlign: TextAlign.center,
      )
    );
  }
}