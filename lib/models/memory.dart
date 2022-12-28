import 'package:math_expressions/math_expressions.dart';

class Memory {
  final _parser = Parser();
  final _contextModel = ContextModel();
  String inputValue = '';

  void onChange(String value) {
    switch (value) {
      case 'AC':
        inputValue = '';
        break;
      case '=':
        inputValue = _parser
            .parse(inputValue)
            .evaluate(
              EvaluationType.REAL,
              _contextModel,
            )
            .toString();
        break;
      default:
        inputValue += value;
        break;
    }
  }
}
