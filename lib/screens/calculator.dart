import 'package:flutter/material.dart';

import '../components/display.dart';
import '../components/keyboard.dart';
import '../models/memory.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final memory = Memory();

  _onTap(String command) {
    setState(() {
      memory.onChange(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Display(
            text: memory.inputValue,
          ),
        ),
        Keyboard(
          onTap: _onTap,
        ),
      ],
    );
  }
}
