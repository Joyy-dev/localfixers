import 'package:flutter/material.dart';
import 'package:localfixers/provider/services.dart';

class LocalServices with ChangeNotifier{
  final List<Services> _serviceList = [
    Services(
      id: 'S1', 
      title: 'Elite Home Sanctuary Package', 
      serviceCategory: 'Cleaning', 
      description: 'Comprehensive deep cleaning by our certified luxury housekeeping team', 
      featuredImage: 'assets/images/clean.png', 
      rating: 4.9,
      price: 199
    ),
    Services(
      id: 'S2', 
      title: 'Artisan Garden Design',  
      serviceCategory: 'Gardening', 
      description: 'Bespoke landscape architecture and seasonal maintenance for estates', 
      featuredImage: 'assets/images/water.png', 
      rating: 4.8,
      price: 85
    ),
    Services(
      id: 'S3', 
      title: 'Smart Home Integration', 
      serviceCategory: 'Electrician', 
      description: 'Certified automation experts for lighting and security systems', 
      featuredImage: 'assets/images/electrician.png', 
      rating: 5.0,
      price: 98
    ),
    Services(
      id: 'S4', 
      title: 'Master Plumbing Solutions', 
      serviceCategory: 'Plumbing', 
      description: 'Urgent repairs and luxury fixture installations with precision care', 
      featuredImage: 'assets/images/plumber.png', 
      rating: 4.7, 
      price: 430
    )
  ];

  List<Services> get serviceList {
    return[..._serviceList];
  }
}