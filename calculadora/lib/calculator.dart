import 'package:flutter/services.dart';
import 'package:testes/models/memory.dart';

import 'components/display.dart';

import 'package:flutter/material.dart';
import 'components/keyboard.dart';



class Calculator extends StatefulWidget {
  //const Calculator({Key? key, required this.title}) : super(key: key);
  
  

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Memory memory = Memory();
  _onPressed(String command) {
    setState(() {
      memory.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Column(
        children: [
          Display(memory.value),
          Keyboard(_onPressed),
        ],
      ),
    );
  }
}


