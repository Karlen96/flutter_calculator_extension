import 'package:flutter/material.dart';

import '../const/button_symbols.dart';
import 'button.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) onTap;

  const Keyboard({
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      padding: const EdgeInsets.only(
        top: 24,
        right: 24,
        bottom: 32,
        left: 24,
      ),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 4,
      children: buttonSymbols
          .map(
            (e) => Button(
              value: e,
              onTap: () => onTap(e),
            ),
          )
          .toList(),
    );
  }
}
