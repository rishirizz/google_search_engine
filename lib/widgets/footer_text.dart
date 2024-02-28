import 'package:flutter/material.dart';

class FooterText extends StatelessWidget {
  final String title;
  const FooterText({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        title,
        style: const TextStyle(
          color: Color(0xff70757A),
        ),
      ),
    );
  }
}
