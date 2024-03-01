import 'package:flutter/material.dart';
import 'package:google_search_engine/utils/colors.dart';

class SearchScreenFooter extends StatelessWidget {
  const SearchScreenFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: (size.width > 768) ? 150 : 20,
            vertical: 15,
          ),
          color: footerColor,
          child: Row(
            children: [
              Text(
                'India',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 0.5,
                color: Colors.grey,
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.circle,
                color: Color(0xff70757A),
                size: 12,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                '834005, Ranchi, Jharkhand',
                style: TextStyle(
                  fontSize: 14,
                  color: primaryColor,
                ),
              )
            ],
          ),
        ),
        const Divider(
          thickness: 0,
          height: 0,
          color: Color.fromARGB(66, 105, 105, 105),
        ),
        Container(
          color: footerColor,
          padding: EdgeInsets.symmetric(
            horizontal: (size.width > 768) ? 150 : 20,
            vertical: 10,
          ),
          child: Row(
            children: [
              Text(
                'Help',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                'Send Feedback',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                'Privacy',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                'Terms',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
