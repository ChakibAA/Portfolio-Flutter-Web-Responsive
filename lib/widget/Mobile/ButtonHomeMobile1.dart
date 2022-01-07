import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonHomeMobile1 extends StatefulWidget {
  String text;
  var onpressd;
  double top1;
  double top2;
  int delay;
  bool hover;

  ButtonHomeMobile1(
      {Key? key,
      required this.text,
      required this.hover,
      required this.onpressd,
      required this.top2,
      required this.delay,
      required this.top1})
      : super(key: key);

  @override
  _ButtonHomeState createState() => _ButtonHomeState();
}

class _ButtonHomeState extends State<ButtonHomeMobile1> {
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

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      top: move ? widget.top1 : widget.top2,
      left: MediaQuery.of(context).size.width * 0.1,
      duration: Duration(milliseconds: widget.delay),
      child: AnimatedOpacity(
        duration: Duration(milliseconds: widget.delay * 2),
        opacity: move ? 1 : 0,
        child: ElevatedButton(
          style: ButtonStyle(
            shadowColor: MaterialStateProperty.all(Colors.transparent),
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
          ),
          onPressed: widget.onpressd,
          child: widget.hover
              ? Text(
                  widget.text,
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w600,
                      fontSize: 80),
                )
              : Container(),
        ),
      ),
    );
  }
}
