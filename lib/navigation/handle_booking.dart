import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:localfixers/screens/auth_screen.dart';
import 'package:localfixers/screens/booking_screens.dart';

class HandleBooking extends StatelessWidget {
  const HandleBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(), 
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return BookingScreens();
        } else {
          return AuthScreen();
        }
      },
    );
  }
}
