import 'dart:math';

import 'package:flutter/material.dart';
import 'user_love_react_page.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _con;
  late TextEditingController _textEditingController;
  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
    _con = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
  }

  int toggle = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: themiColor,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            'Search',
            style: TextStyle(fontSize: 20,color: iconColor, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: (() {}),
              icon: const Icon(Icons.person, color: iconColor,),
            )
          ],
        ),
        body: Column(
          
          children: [
            Container(
            height: 100.0,
            width: 335.0,
            alignment: const Alignment(-1.0, 0.0),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              height: 48.0,
              width: (toggle == 0) ? 48.0 : 335.0,
              curve: Curves.easeOut,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    spreadRadius: -10.0,
                    blurRadius: 10.0,
                    offset: Offset(0.0, 10.0),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 400),
                    top: 6.0,
                    right: 7.0,
                    curve: Curves.easeOut,
                    child: AnimatedOpacity(
                      opacity: (toggle == 0) ? 0.0 : 1.0,
                      duration: const Duration(milliseconds: 200),
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: const Color(0xffF2F3F7),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: AnimatedBuilder(
                          builder: (context, widget) {
                            return Transform.rotate(
                              angle: _con.value * 2.0 * pi,
                              child: widget,
                            );
                          },
                          animation: _con,
                          child: const Icon(
                            Icons.mic,color: iconColor,
                            size: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 400),
                    left: (toggle == 0) ? 20.0 : 40.0,
                    curve: Curves.easeOut,
                    top: 11.0,
                    child: AnimatedOpacity(
                      opacity: (toggle == 0) ? 0.0 : 1.0,
                      duration: const Duration(milliseconds: 200),
                      child: SizedBox(
                        height: 23.0,
                        width: 180.0,
                        child: TextField(
                          controller: _textEditingController,
                          cursorRadius: const Radius.circular(10.0),
                          cursorWidth: 2.0,
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            floatingLabelBehavior:
                                FloatingLabelBehavior.never,
                            labelText: 'Search...',

                            labelStyle: const TextStyle(
                              color: iconColor,
                              fontSize: 17.0,
                              fontWeight: FontWeight.w500,
                            ),
                            alignLabelWithHint: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    // color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                    child: IconButton(
                      splashRadius: 19.0,
                      icon: const Icon(Icons.search,color: iconColor, size: 25,),
                      onPressed: () {
                        setState(
                          () {
                            if (toggle == 0) {
                              toggle = 1;
                              _con.forward();
                            } else {
                              toggle = 0;
                              _textEditingController.clear();
                              _con.reverse();
                            }
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            ),
            
            const Center(child: SizedBox (height: 200, child: Icon(Icons.search, color: iconColor,size: 70,))),
            const SizedBox (height: 50, child: Icon(Icons.qr_code_scanner, color: iconColor,size: 70,)),
            const SizedBox (height: 250, child: Icon(Icons.fingerprint, color: iconColor,size: 70,)),





          ],
        ));
  }
}
