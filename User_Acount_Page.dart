
import 'package:chat_app/pages/user_love_react_page.dart';
import 'package:flutter/material.dart';


class AcountPage extends StatelessWidget {
  const AcountPage({super.key});

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
          'Account', 
          style: TextStyle(fontSize: 20, color: iconColor, fontWeight: FontWeight.bold),
          ),
            actions: [
              IconButton(
                onPressed: (() {
                
              }), icon: const Icon(Icons.person,color: iconColor,),
              )
            ],
      ),
      

      
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 40,),
            Container(
              height: 110,
              width: 110,
              decoration: BoxDecoration(
              shape: BoxShape.circle,
               color: boxColor,
               boxShadow: [
                BoxShadow(
                blurRadius: 7.5,
                offset: const Offset(4,4),
                color: Colors.grey.shade800,
                spreadRadius: 0.5,
                ),

                const BoxShadow(
                blurRadius: 7.5,
                offset: Offset(-2,-2),
                color: shapColor,
                spreadRadius: 0.5,
                ),
                ]),
                child: const Center(child: Icon(Icons.person,color: iconColor,size: 50,)),
            ),
            
            const SizedBox(height: 30,),
            const Text('Amit Barai',style: TextStyle(color: iconColor,fontSize: 20),),
            const SizedBox(height: 15,),
            const Text("I'm a Flutter Devloper",style: TextStyle(color: iconColor,fontSize: 20),),
            const SizedBox(height: 15,),
            const Text("I Designed this Beautifull UI",style: TextStyle(color: iconColor,fontSize: 20),),
            


          ],
        ),
      ),
    
    
    );
  }
}









































// class myDesktopBody extends StatefulWidget {
//   const myDesktopBody({super.key});

//   @override
//   State<myDesktopBody> createState() => _myDesktopBodyState();
// }

// class _myDesktopBodyState extends State<myDesktopBody> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blue.shade200,
//     );
//   }
// }