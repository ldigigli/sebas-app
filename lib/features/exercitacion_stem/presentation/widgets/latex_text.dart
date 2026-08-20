import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';

class LatexText extends StatelessWidget {
  const LatexText(this.latex, {super.key, this.fontSize = 18});

  final String latex;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Math.tex(
      latex,
      textStyle: TextStyle(fontSize: fontSize, color: Theme.of(context).colorScheme.onSurface),
      mathStyle: MathStyle.text,
      onErrorFallback: (error) => Text(
        'Ecuación no disponible',
        style: TextStyle(color: Theme.of(context).colorScheme.error),
      ),
    );
  }
}
