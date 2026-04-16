import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:localfixers/firebase_options.dart';
import 'package:localfixers/provider/local_services.dart';
import 'package:localfixers/screens/home_screens.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) {
            return LocalServices();
          },
        )
      ],
      child: MaterialApp(
        home: HomeScreens(),
        color: Color(0xFFEEF0FF),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          hintColor: Colors.grey[600],
          iconTheme: IconThemeData(
            color: Colors.grey
          ),
          scaffoldBackgroundColor: Color(0xFFEDF0FF),
          appBarTheme: AppBarTheme(
            backgroundColor: Color(0xFFEEF0FF),
            foregroundColor: Color(0xFF0D2C6E),
            titleTextStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF0D2C6E),
              fontSize: 23
            ),
            elevation: 1,
          )
        ),
      ),
    );

  }
}