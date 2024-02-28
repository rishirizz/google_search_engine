import 'package:flutter/material.dart';
import 'package:google_search_engine/utils/colors.dart';

class SearchButton extends StatelessWidget {
  final String title;
  const SearchButton({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 18,
      ),
      color: searchColor,
      elevation: 0,
      child: Text(
        title,
      ),
      onPressed: () {},
    );
  }
}
