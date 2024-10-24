import 'package:flutter/widgets.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final String text;
  const CustomButton({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 45,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(23), color: color),
      child: Center(
        child: Text(text),
      ),
    );
  }
}
