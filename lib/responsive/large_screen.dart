// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_search_engine/utils/colors.dart';
import 'package:google_search_engine/widgets/search.dart';
import 'package:google_search_engine/widgets/translation_buttons.dart';

import '../widgets/country_footer.dart';
import '../widgets/large_screen_footer.dart';
import '../widgets/search_buttons.dart';

class LargeScreenWidget extends StatelessWidget {
  const LargeScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Gmail',
              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Images',
              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/images/more-apps.svg',
              color: primaryColor,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0).copyWith(
              right: 10,
            ),
            child: MaterialButton(
              color: const Color(0xff1A73EB),
              onPressed: () {},
              child: const Text(
                'Sign in',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.25,
          ),
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Search(),
                    SizedBox(height: 20),
                    SearchButtons(),
                    SizedBox(height: 20),
                    TranslationButtons(),
                  ],
                ),
              ],
            ),
          ),
          const CountryFooter(
            country: 'India',
          ),
          const Divider(
            height: 0,
            color: searchBorder,
          ),
          const LargeScreenFooter(),
        ],
      ),
    );
  }
}
