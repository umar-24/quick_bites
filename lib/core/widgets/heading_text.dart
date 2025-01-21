import 'package:flutter/widgets.dart';

class HeadingText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  const HeadingText({
    super.key,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
    );
  }
}
