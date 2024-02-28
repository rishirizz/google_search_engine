import 'package:flutter/material.dart';
import 'package:google_search_engine/utils/colors.dart';
import 'package:google_search_engine/widgets/footer_text.dart';

class SmallScreenFooter extends StatelessWidget {
  const SmallScreenFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      color: footerColor,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: const Wrap(
        alignment: WrapAlignment.center,
        children: [
          FooterText(title: 'About'),
          SizedBox(
            width: 10,
          ),
          FooterText(title: 'Advertising'),
          SizedBox(
            width: 10,
          ),
          FooterText(title: 'Business'),
          SizedBox(
            width: 10,
          ),
          FooterText(title: 'How Search works'),
          SizedBox(
            width: 10,
          ),
          FooterText(title: 'Privacy'),
          SizedBox(
            width: 10,
          ),
          FooterText(title: 'Terms'),
          SizedBox(
            width: 10,
          ),
          FooterText(title: 'Settings'),
        ],
      ),
    );
  }
}
