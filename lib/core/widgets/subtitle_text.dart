import 'package:flutter/widgets.dart';

class SubtitleText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  const SubtitleText(
      {super.key,
      required this.text,
      required this.fontSize,
      this.fontWeight,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color),
    );
  }
}
