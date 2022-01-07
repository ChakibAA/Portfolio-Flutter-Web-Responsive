import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portfolio/constant.dart';

// ignore: must_be_immutable
class ButtonHomeWeb extends StatefulWidget {
  String text1;
  String text2;
  var onpressd;
  double top1;
  double top2;
  int delay;

  ButtonHomeWeb(
      {Key? key,
      required this.text1,
      required this.text2,
      required this.onpressd,
      required this.top2,
      required this.delay,
      required this.top1})
      : super(key: key);

  @override
  _ButtonHomeState createState() => _ButtonHomeState();
}

class _ButtonHomeState extends State<ButtonHomeWeb> {
  bool move = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        move = true;
      });
    });
  }

  bool hover = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      top: move ? widget.top1 : widget.top2,
      left: !hover
          ? MediaQuery.of(context).size.width * 0.1
          : MediaQuery.of(context).size.width * 0.13,
      duration: Duration(milliseconds: widget.delay),
      child: AnimatedOpacity(
        duration: Duration(milliseconds: widget.delay * 2),
        opacity: move ? 1 : 0,
        child: MouseRegion(
          onEnter: (event) {
            setState(() {
              hover = true;
            });
          },
          onExit: (event) {
            setState(() {
              hover = false;
            });
          },
          child: !hover
              ? Text(
                  widget.text1,
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold,
                      fontSize: 100),
                )
              : ElevatedButton(
                  style: ButtonStyle(
                    shadowColor: MaterialStateProperty.all(Colors.transparent),
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                  ),
                  onPressed: widget.onpressd,
                  child: Text(
                    widget.text2,
                    style: TextStyle(
                        color: primaryColor,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.bold,
                        fontSize: 100),
                  ),
                ),
        ),
      ),
    );
  }
}
