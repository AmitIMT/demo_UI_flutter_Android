import 'package:chat_app/pages/Main_Page.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'C H A T',
      // theme: AppTheme.light(),
      // darkTheme: AppTheme.dark(),
      // themeMode: ThemeMode.dark,
      
      // home: firstPage(),
      home:  MainPage(),


    );
  }
}




