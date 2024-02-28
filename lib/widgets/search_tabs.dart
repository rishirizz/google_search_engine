import 'package:flutter/material.dart';
import 'package:google_search_engine/widgets/search_tab.dart';

class SearchTabs extends StatefulWidget {
  const SearchTabs({super.key});

  @override
  State<SearchTabs> createState() => _SearchTabsState();
}

class _SearchTabsState extends State<SearchTabs> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 55,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SearchTab(
            isActive: true,
            text: 'All',
            iconData: Icons.search,
          ),
          SizedBox(
            width: 30,
          ),
          SearchTab(
            text: 'Images',
            iconData: Icons.image,
          ),
          SizedBox(
            width: 30,
          ),
          SearchTab(
            text: 'Maps',
            iconData: Icons.map,
          ),
          SizedBox(
            width: 30,
          ),
          SearchTab(
            text: 'News',
            iconData: Icons.article,
          ),
          SizedBox(
            width: 30,
          ),
          SearchTab(
            text: 'Shopping',
            iconData: Icons.shop,
          ),
          SizedBox(
            width: 30,
          ),
          SearchTab(
            text: 'More',
            iconData: Icons.more_vert,
          ),
        ],
      ),
    );
  }
}
