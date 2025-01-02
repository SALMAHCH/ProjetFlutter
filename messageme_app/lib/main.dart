import 'package:messageme_app/screens/registration_screen.dart';

import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'package:messageme_app/screens/registration_screen.dart';
import 'package:messageme_app/screens/welcome_screen.dart';
import 'package:messageme_app/screens/signin_screen.dart';
import 'screens/signin_screen.dart';

import 'screens/chat_screen.dart';
import 'package:messageme_app/screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MessageMe App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: ChatScreen(),
      initialRoute: WelcomeScreen.screenRoute,
      routes: {
        WelcomeScreen.screenRoute: (context) => WelcomeScreen(),
        RegistrationScreen.screenRoute: (context) => RegistrationScreen(),
        SignInScreen.screenRoute: (context) => SignInScreen(),
        ChatScreen.screenRoute: (context) => ChatScreen(),
      },
    );
  }
}
