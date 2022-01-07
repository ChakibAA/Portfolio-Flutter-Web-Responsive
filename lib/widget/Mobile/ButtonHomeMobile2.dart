import 'package:flutter/material.dart';
import 'package:portfolio/constant.dart';

// ignore: must_be_immutable
class ButtonHomeMobile2 extends StatefulWidget {
  String text;
  var onpressd;
  double top1;
  double top2;
  int delay;
  bool hover;

  ButtonHomeMobile2(
      {Key? key,
      required this.text,
      required this.onpressd,
      required this.hover,
      required this.top2,
      required this.delay,
      required this.top1})
      : super(key: key);

  @override
  _ButtonHomeState createState() => _ButtonHomeState();
}

class _ButtonHomeState extends State<ButtonHomeMobile2> {
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      top: widget.hover ? widget.top1 : widget.top2,
      left: MediaQuery.of(context).size.width * 0.1,
      duration: Duration(milliseconds: widget.delay),
      child: AnimatedOpacity(
        duration: Duration(milliseconds: widget.delay * 2),
        opacity: widget.hover ? 1 : 0,
        child: ElevatedButton(
          style: ButtonStyle(
            shadowColor: MaterialStateProperty.all(Colors.transparent),
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
          ),
          onPressed: widget.onpressd,
          child: Text(
            widget.text,
            style: TextStyle(
                color: primaryColor,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.w600,
                fontSize: 80),
          ),
        ),
      ),
    );
  }
}
