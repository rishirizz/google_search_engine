import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_search_engine/utils/api_json.dart';
import 'package:google_search_engine/utils/constants.dart';
import 'package:http/http.dart' as http;

class APIService {
  bool isDummyData = true;

  Future<Map<String, dynamic>> fetchData(
      {required String queryTerm, String start = '0'}) async {
    try {
      if (!isDummyData) {
        String q = queryTerm.contains('')
            ? queryTerm.split('').join('%20')
            : queryTerm;
        final response = await http.get(
          Uri.parse(
            '$apiDomain&q=$q&start=$start',
          ),
        );
        if (response.statusCode == 200) {
          final jsonData = response.body;
          final respData = json.decode(jsonData);
          return respData;
        }
      }
    } catch (e) {
      debugPrint('$e');
    }
    return apiResponse;
  }
}
