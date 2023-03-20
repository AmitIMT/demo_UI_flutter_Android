// ignore: file_names

import 'package:flutter/material.dart';

import 'package:chat_app/responsive/Contain_Functions.dart';


const themiColor = Color.fromARGB(255, 244, 207, 223);
const boxColor = Color.fromARGB(255, 244, 207, 223);
const iconColor = Color.fromARGB(255, 2, 164, 178);
const  barDesign = Color.fromARGB(255, 182, 216, 242);
const  shapColor = Color.fromARGB(255, 255, 241, 255);

class LoveReactPage extends StatefulWidget {
  const LoveReactPage({super.key});

  @override
  State<LoveReactPage> createState() => _LoveReactPageState();
}

class _LoveReactPageState extends State<LoveReactPage> {


  final List _like = [
    'PAGE POST 1',
    'PAGE POST 2',
    'PAGE POST 3',
    'PAGE POST 4',
    'PAGE POST 5',
    'PAGE POST 6',
    'PAGE POST 7',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themiColor,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: true,
        
        backgroundColor:  Colors.transparent,
        elevation: 0,
        title: const Text(
          'Notifications', 
          style: TextStyle(fontSize: 25, color: iconColor),
          ),
            
      ),
      

      
      body: ListView.builder(
                itemCount: _like.length,
                itemBuilder:  (context, index) {
                return LikePage(childr: _like[index],);
              }),
    );
  }
}







































// class myMobileBody extends StatefulWidget {
//   const myMobileBody({super.key});
  

//   @override
//   State<myMobileBody> createState() => _myMobileBodyState();
// }

// class _myMobileBodyState extends State<myMobileBody> {

//   var items = 25;



//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.green.shade200,
//       appBar: AppBar(
        
//         title: Text('C H A T'),
//       ),

//       body: Expanded(
//         child: ListView.builder(
//           itemCount: items,
//           itemBuilder: ((context, items) {
              
//           })
//           ),
//           ),



        
//       );


    
//   }
// }