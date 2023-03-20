import 'package:chat_app/pages/user_love_react_page.dart';
import 'package:flutter/material.dart';

class BoxDesignPage extends StatelessWidget {
  const BoxDesignPage({super.key, required this.child });
  final String child;
  
  // DesignPage({required this.child});

  @override
  Widget build(BuildContext context ) {
    return Padding(
      padding: const EdgeInsets.only(top: 20,bottom: 20,left: 15,right: 15,),
      child: Container(
        height: 330,
        width: 330,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: boxColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 7.5,
              offset: const Offset(5,5),
              color: Colors.grey.shade800,
              spreadRadius: 0.5,
            ),

            const BoxShadow(
              blurRadius: 7.5,
              offset: Offset(-4,-4),
              color: shapColor,
              spreadRadius: 0.5,
            ),


          ]
        ),
        child: Center(child: Text(child, 
        style: const TextStyle(fontSize: 20,color: Color.fromARGB(255, 37, 49, 45)),)),
      ),
    );
  }
}

// 

class CircularDesignPage extends StatelessWidget {
  const CircularDesignPage({super.key, required this.childe,});
  final String childe;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20,bottom: 20,left: 15,right: 15,),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: boxColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 8.5,
              offset: const Offset(5,5),
              color: Colors.grey.shade800,
              spreadRadius: 0.5,
            ),

            const BoxShadow(
              blurRadius: 8.5,
              offset: Offset(-3,-3),
              color: shapColor,
              spreadRadius: 0.5,
            ),


          ]
        ),
        child: Center(child: Text(childe, 
        style: const TextStyle(fontSize: 14,color: Color.fromARGB(255, 37, 49, 45)),)),
      ),
    );
  }
}





class LikePage extends StatelessWidget {
  const LikePage({super.key, required this.childr});
  final String childr;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15,bottom: 15,left: 15,right: 15,),
      child: Container(
        height: 120,
        width: 330,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: boxColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 7.5,
              offset: const Offset(5,5),
              color: Colors.grey.shade800,
              spreadRadius: 0.5,
            ),

            const BoxShadow(
              blurRadius: 7.5,
              offset: Offset(-4,-4),
              color: shapColor,
              spreadRadius: 0.5,
            ),
          ]
        ),
        // child: Center(child: Text(childr, 
        // style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 37, 49, 45)),)),
        child: Row(
          
          children: [
            const SizedBox(width: 25,),
            Container(
              height: 75,
              width: 75,
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
                ]
                ),
                child: const Center(child: Icon(Icons.person,color: iconColor,size: 30,)),

            ),
            const SizedBox(width: 25,),

            Center(child: Text(childr, 
            style: const TextStyle(fontSize: 25,color: Color.fromARGB(255, 37, 49, 45)),)),

            
          ],
        ),

      ),
    );
  }
}




































// class ResponsiveLayout extends StatelessWidget {
//   // const ResponsiveLayout({super.key});
//   final Widget mobileBody;
//   final Widget desktopBody;
//   // final Widget tabletBody;
//   ResponsiveLayout({required this.mobileBody , required this.desktopBody});
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context , constraints) {
//         if (constraints.maxWidth < 600) {
//           return mobileBody;
//         }
//         else{
//           return desktopBody;
//         }
//       }
//       );
//   }
// }