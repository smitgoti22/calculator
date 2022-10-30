import 'package:flutter/material.dart';

class CButtons extends StatelessWidget {
  final color;
  final textColor;
  final String buttonText;
  final Function callbtn;

  CButtons({
    this.color,
    this.textColor,
     required this.buttonText,
     required this.callbtn,
});

  @override
  Widget build(BuildContext) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: GestureDetector(
          onTap: () => callbtn(buttonText),
          child: Container(
            height: 65,
            width: 80,
            color: color,
            child: Center(
              child: Text(buttonText,
                  style: TextStyle(
                    color: textColor,
                    decoration: TextDecoration.none,
                    fontSize: 22
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
