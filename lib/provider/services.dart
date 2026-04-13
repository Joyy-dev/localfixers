import 'package:flutter/material.dart';

class Services with ChangeNotifier{
  final String id;
  final String title;
  final String serviceCategory;
  final String description;
  final String featuredImage;
  final double rating;
  final double price;

  Services({
    required this.id,
    required this.title,
    required this.serviceCategory,
    required this.description,
    required this.featuredImage,
    required this.rating,
    required this.price
  });
}