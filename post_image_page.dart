
import 'package:flutter/material.dart';

import 'user_love_react_page.dart';

class NewPostPage extends StatefulWidget {
  const NewPostPage({super.key});

  @override
  State<NewPostPage> createState() => _NewPostPageState();
}

class _NewPostPageState extends State<NewPostPage> {

  bool _isElevited = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themiColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Add Friends',
          style: TextStyle(
              fontSize: 20, color: iconColor, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: (() {}),
            icon: const Icon(
              Icons.person,
              color: iconColor,
            ),
          )
        ],
      ),
      body:  GridView.builder(
              itemCount: 19,
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.5),
                  child: Container(
                    decoration: BoxDecoration(
                        color: themiColor,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 7.5,
                            offset: const Offset(5, 5),
                            color: Colors.grey.shade800,
                            spreadRadius: 0.5,
                          ),
                          const BoxShadow(
                            blurRadius: 7.5,
                            offset: Offset(-3, -3),
                            color: shapColor,
                            spreadRadius: 0.5,
                          ),
                        ]),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 17,top: 17,),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: themiColor,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 7.5,
                                        offset: const Offset(5, 5),
                                        color: Colors.grey.shade800,
                                        spreadRadius: 0.5,
                                      ),
                                      const BoxShadow(
                                        blurRadius: 7.5,
                                        offset: Offset(-3, -3),
                                        color: shapColor,
                                        spreadRadius: 0.5,
                                      ),
                                    ]),
                                    child: const Center(child: Icon(Icons.person, size: 20,color: iconColor,)),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 17, left: 17,),
                              child: Text('Person',style: TextStyle(fontSize: 15,color: iconColor,),),
                            ),
      
                          ],
                        ),
                        SizedBox(
                          height: 100,
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _isElevited = !_isElevited;
                                });
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 200),
                                height: 25,width: 80,
                                decoration: BoxDecoration(
                              color: themiColor,
                              borderRadius: BorderRadius.circular(50.0),
                              boxShadow: _isElevited ? [
                                BoxShadow(
                                  blurRadius: 7.5,
                                  offset: const Offset(3, 3),
                                  color: Colors.grey.shade600,
                                  spreadRadius: 0.5,
                                ),
                                const BoxShadow(
                                  blurRadius: 7.5,
                                  offset: Offset(-5, -5),
                                  color: shapColor,
                                  spreadRadius: 0.5,
                                ),
                              ] : null,
                              ),
                              child: const Center(
                                child: Text('Follow +', style: TextStyle(fontSize: 15,
                                color: iconColor,),)),
                              ),
                            ),
                          ),
                        ),
      
      
                      ],
                    ),
                  ),
                );
              }),
        
      
    );
  }
}
