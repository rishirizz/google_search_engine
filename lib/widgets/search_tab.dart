import 'package:flutter/material.dart';
import 'package:google_search_engine/utils/colors.dart';

class SearchTab extends StatelessWidget {
  final IconData iconData;
  final bool isActive;
  final String text;
  const SearchTab({
    required this.iconData,
    this.isActive = false,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 18,
              color: isActive ? blueColor : Colors.grey,
            ),
            const SizedBox(
              width: 3,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 15,
                color: isActive ? blueColor : Colors.grey,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 7,
        ),
        if (isActive)
          Container(
            height: 3,
            width: 40,
            color: blueColor,
          ),
      ],
    );
  }
}
