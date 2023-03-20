// ignore: file_names

import 'package:chat_app/responsive/Contain_Functions.dart';
import 'package:flutter/material.dart';
import 'user_love_react_page.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // Future<Void> _HandleRefresh() async {
  //   return await Future.delayed(Duration(seconds: 2));
  // }


  final List _posts = [
    'PAGE POST 1',
    'PAGE POST 2',
    'PAGE POST 3',
    'PAGE POST 4',
    'PAGE POST 5',
    'PAGE POST 6',
    'PAGE POST 7',
  ];
  final List _story = [
    'STORY 1',
    'STORY 2',
    'STORY 3',
    'STORY 4',
    'STORY 5',
    'STORY 6',
    'STORY 7',
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themiColor,
      appBar: AppBar(
        centerTitle: true,
        
        backgroundColor:  Colors.transparent,
        elevation: 0,
        title: const Text(
          'C O S M O', 
          style: TextStyle(fontSize: 25, color: iconColor,
          ),
          ),
            actions: [
              IconButton(
                onPressed: (() {
                
              }), icon: const Icon(Icons.person,color: iconColor,),
              )
            ],
      ),
      drawer: const Drawer(backgroundColor: barDesign,),


      
      body:  Column(
        
        children: [
          // Instagram Story Section
          SizedBox(
            height: 125,
            child: ListView.builder(
              itemCount: _story.length,
              scrollDirection: Axis.horizontal,
              itemBuilder:  (context, index) {
              return CircularDesignPage(childe: _story[index],);
            }),
          ),
      
          // instragram   page  UI escalator.
          Expanded(
            child: ListView.builder(itemCount: _posts.length ,
               itemBuilder: ((context, index) {
               return BoxDesignPage(child: _posts[index],);
               })
             ),
          ),
        ],
      ),
      
    );
  }
}




// body:  LiquidPullToRefresh(
//         onRefresh: _HandleRefresh,
//         height: 300,
//         backgroundColor: ThemiColor,
//         child: Column(
          
//           children: [
//             // Instra gram Story Section
//             Container(
//               height: 200,
//               child: ListView.builder(
//                 itemCount: _Story.length,
//                 scrollDirection: Axis.horizontal,
//                 itemBuilder:  (context, index) {
//                 return SecondDesignPage(childe: _Story[index],);
//               }),
//             ),
        
//             // instragram   page  UI escalator.
//             Expanded(
//               child: ListView.builder(itemCount: _Posts.length ,
//                  itemBuilder: ((context, index) {
//                  return DesignPage(child: _Posts[index],);
//                  })
//                ),
//             ),
//           ],
//         ),
//       ),