import 'package:flutter/material.dart';
import 'package:google_search_engine/utils/colors.dart';

class LanguageText extends StatelessWidget {
  final String title;
  const LanguageText({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Text(
        title,
        style: const TextStyle(
          color: blueColor,
        ),
      ),
    );
  }
}
