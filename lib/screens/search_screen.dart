import 'package:flutter/material.dart';
import 'package:google_search_engine/api_services/api_service.dart';
import 'package:google_search_engine/utils/colors.dart';

import '../widgets/search_header.dart';
import '../widgets/search_results_component.dart';
import '../widgets/search_screen_footer.dart';
import '../widgets/search_tabs.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  final APIService apiService = APIService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchHeader(),
            const Padding(
              padding: EdgeInsets.only(left: 160.0),
              child: SearchTabs(),
            ),
            const Divider(
              height: 0,
              thickness: 0.3,
            ),
            FutureBuilder(
              future: apiService.fetchData(
                queryTerm: 'queryTerm',
              ),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 160.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                            top: 12,
                          ),
                          child: Text(
                            'About ${snapshot.data['searchInformation']['formattedTotalResults']} results (${snapshot.data['searchInformation']['formattedSearchTime']} seconds)',
                            style: const TextStyle(
                              fontSize: 15,
                              color: Color(
                                0xff70757a,
                              ),
                            ),
                          ),
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: snapshot.data['items'].length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: SearchResultsComponent(
                                description: snapshot.data?['items'][index]
                                    ['snippet'],
                                link: snapshot.data?['items'][index]
                                    ['formattedUrl'],
                                linkToGo: snapshot.data?['items'][index]
                                    ['link'],
                                data: snapshot.data?['items'][index]['title'],
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      '< Prev',
                      style: TextStyle(
                        fontSize: 15,
                        color: blueColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Next >',
                      style: TextStyle(
                        fontSize: 15,
                        color: blueColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const SearchScreenFooter(),
          ],
        ),
      ),
    );
  }
}
