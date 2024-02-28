import 'package:flutter/material.dart';
import 'package:google_search_engine/widgets/search_button.dart';

class SearchButtons extends StatelessWidget {
  const SearchButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SearchButton(
              title: 'Google Search',
            ),
            SizedBox(
              width: 15,
            ),
            SearchButton(
              title: 'I\'m feeling lucky.',
            ),
          ],
        ),
      ],
    );
  }
}
