import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:sari/common/utils/env.dart';

class TokenApiProvider {


  getToken() async {
    try {
      final response = await http.post(
        Uri.parse(baseUrl + '/token'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Basic ${base64Encode(utf8.encode('$userAuth:$passwordAuth'))}',
        },
      );
      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);
        Logger().d('TokenApiProvider: ${jsonResponse['response']['token']}');
        return jsonResponse['response']['token'];
      }
    } catch (e) {
      Logger().e('TokenApiProvider: $e');
      rethrow;
    }
  }
}
