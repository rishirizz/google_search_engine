import 'package:flutter/material.dart';
import 'package:google_search_engine/utils/colors.dart';
import 'package:google_search_engine/widgets/footer_text.dart';

class LargeScreenFooter extends StatelessWidget {
  const LargeScreenFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: footerColor,
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
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
        ],
      ),
    );
  }
}
