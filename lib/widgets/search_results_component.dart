import 'package:flutter/material.dart';
import 'package:google_search_engine/utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchResultsComponent extends StatefulWidget {
  final String link;
  final String data;
  final String linkToGo;
  final String description;

  const SearchResultsComponent({
    required this.link,
    required this.data,
    required this.linkToGo,
    required this.description,
    super.key,
  });

  @override
  State<SearchResultsComponent> createState() => _SearchResultsComponentState();
}

class _SearchResultsComponentState extends State<SearchResultsComponent> {
  bool _showUnderLine = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.link),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 8,
          ),
          child: InkWell(
            splashColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              if (await canLaunch(widget.linkToGo)) {
                await launch(widget.linkToGo);
              }
            },
            onHover: (val) {
              setState(() {
                _showUnderLine = val;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.link,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(
                      0xff202124,
                    ),
                  ),
                ),
                Text(
                  widget.data,
                  style: TextStyle(
                    fontSize: 20,
                    color: blueColor,
                    fontWeight: FontWeight.w400,
                    decoration: _showUnderLine
                        ? TextDecoration.underline
                        : TextDecoration.none,
                  ),
                ),
              ],
            ),
          ),
        ),
        Text(
          widget.description,
          style: const TextStyle(
            fontSize: 14,
            color: primaryColor,
          ),
        ),
      ],
    );
  }
}
