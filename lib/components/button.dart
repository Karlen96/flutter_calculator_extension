import 'package:flutter/material.dart';

// static const DARK = Color.fromRGBO(0, 0, 0, 1.0);
// static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
// static const OPERATION = Color.fromRGBO(250, 158, 13, 1);
class Button extends StatelessWidget {
  final String value;
  final void Function() onTap;

  const Button({
    super.key,
    required this.value,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(
        value,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
