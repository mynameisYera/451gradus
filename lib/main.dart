import 'package:flutter/material.dart';
import 'package:gradus/src/features/unauth/presentation/log_in_page.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LogInPage(),
      ),
    );
  }
}
