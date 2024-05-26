import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:sari/common/helper/TokenNetwork.dart';
import 'package:sari/common/utils/env.dart';

class ProfileApiProvider {
  getAll(String userId) async {
    final token = await TokenApiProvider().getToken();
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/profile/retrieve$userId'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token'
        },
      );

      var dataDecoded = json.decode(response.body.toString());
      if (dataDecoded['messages']['code'] == 0) {
        return dataDecoded;
      }
    } catch (e) {
      Logger().e('ProfileApiProvider: $e');
      rethrow;
    }
  }

  post(String userId, Map<String, dynamic> data) async {
    final token = await TokenApiProvider().getToken();
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/profile/register/$userId'),
        body: data,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token'
        },
      );

      var dataDecoded = json.decode(response.body.toString());
      if (dataDecoded['messages']['code'] == 0) {
        return dataDecoded;
      }
    } catch (e) {
      Logger().e('ProfileApiProvider: $e');
      rethrow;
    }
  }

  patch(String userId, Map<String, dynamic> data) async {
    final token = await TokenApiProvider().getToken();
    try {
      final response = await http.patch(
        Uri.parse('$baseUrl/profile/update/$userId'),
        body: data,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token'
        },
      );

      var dataDecoded = json.decode(response.body.toString());
      if (dataDecoded['messages']['code'] == 0) {
        return dataDecoded;
      }
    } catch (e) {
      Logger().e('ProfileApiProvider: $e');
      rethrow;
    }
  }

  delete(String userId) async {
    final token = await TokenApiProvider().getToken();
    try {
      final response = await http.delete(
        Uri.parse('$baseUrl/profile/delete/$userId'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token'
        },
      );

      var dataDecoded = json.decode(response.body.toString());
      if (dataDecoded['messages']['code'] == 0) {
        return dataDecoded;
      }
    } catch (e) {
      Logger().e('ProfileApiProvider: $e');
      rethrow;
    }
  }
}
