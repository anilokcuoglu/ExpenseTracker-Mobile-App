import 'package:expense_tracker_app/screens/bottom_bar.dart';
import 'package:expense_tracker_app/splash/register.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker_app/utils/app_styles.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Expense Tracker',
        theme: ThemeData(
          primaryColor: primary,
        ),
        home: const RegisterPage()
    );
  }
}
