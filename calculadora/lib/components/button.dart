import 'package:flutter/material.dart';
import '../calculator.dart';


class Button extends StatelessWidget {

   MaterialColor? dd = Colors.deepOrange;
  

  final String text;
  final bool big;
  final void Function(String) cb;

  Button({
    required this.text,
    this.big = false,
    required this.cb,
     this.dd, 
    
  });

  Button.big({
    required this.text,
    this.big = true,
     required this.cb, 
     this.dd,
     
  });

  Button.operation({
    required this.text,
    this.big = false,
    required this.cb,
    this.dd,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: dd,
            fontSize: 32,
            fontWeight: FontWeight.w200,
            
          ),
          
        ),
        onPressed: () => cb(text),
      ),
    );
  }
}
