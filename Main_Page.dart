import 'package:chat_app/pages/post_image_page.dart';
import 'package:chat_app/pages/User_Acount_Page.dart';
import 'package:chat_app/pages/home_containt_page.dart';
import 'package:chat_app/pages/user_love_react_page.dart';
import 'package:chat_app/pages/Search_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:chat_app/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';




class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _selectedIndex = 0;

  void _navigetBottomBar( int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
 

  final pages = [
    const HomePage(),
    const LoveReactPage(),
    const NewPostPage(),
    const SearchPage(),
    const AcountPage(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: themiColor,
        color: barDesign,
        animationDuration: const Duration(milliseconds: 600),
        onTap: _navigetBottomBar,

        items: const [
        Icon(Icons.home, color: iconColor,),
        Icon(Icons.favorite, color:iconColor,),
        Icon(Icons.add, color: iconColor,),
        Icon(Icons.search, color: iconColor,),
        Icon(Icons.person, color: iconColor,),
      ]),

    );
  }

      // appBar: AppBar(
        // backgroundColor:  Colors.transparent,
        // elevation: 0,
      //   title: const Text('Message', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
      // ),
}