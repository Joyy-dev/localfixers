import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:localfixers/screens/auth_screen.dart';
import 'package:localfixers/screens/service_listing_detail_screen.dart';

class HandleServiceListing extends StatelessWidget {
  final int index;
  const HandleServiceListing(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(), 
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ServiceListingDetailScreen(index);
        } else {
          return AuthScreen();
        }
      },
    );
  }
}