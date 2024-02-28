import 'package:flutter/material.dart';
import 'package:google_search_engine/widgets/footer_text.dart';

import '../utils/colors.dart';

class CountryFooter extends StatelessWidget {
  final String country;
  const CountryFooter({
    required this.country,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.topLeft,
      width: size.width,
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ).copyWith(
        left: 20,
      ),
      color: footerColor,
      child: FooterText(
        title: country,
      ),
    );
  }
}
