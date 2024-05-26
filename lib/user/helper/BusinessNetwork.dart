import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import '../../common/helper/TokenNetwork.dart';
import '../../common/utils/env.dart';

class BusinessApiProvider {
  login(Map<String, dynamic> data) async {
    final token = await TokenApiProvider().getToken();
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/business/login'),
        body: data,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );
      var dataDecoded = json.decode(response.body.toString());

      if (dataDecoded['messages']['code'] == 0) {
        return dataDecoded;
      }
    } catch (e) {
      Logger().e('BusinessApiProvider: $e');
      rethrow;
    }
  }

  register(Map<String, dynamic> data) async {
    final token = await TokenApiProvider().getToken();
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/business/register'),
        body: data,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );
      var dataDecoded = json.decode(response.body.toString());

      if (dataDecoded['messages']['code'] == 0) {
        return dataDecoded;
      }
    } catch (e) {
      Logger().e('BusinessApiProvider: $e');
      rethrow;
    }
  }

  update( String userId, Map<String, dynamic> data) async {
    final token = await TokenApiProvider().getToken();
    try {
      final response = await http.put(
        Uri.parse('$baseUrl/business/update/$userId'),
        body: data,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );
      var dataDecoded = json.decode(response.body.toString());

      if (dataDecoded['messages']['code'] == 0) {
        return dataDecoded;
      }
    } catch (e) {
      Logger().e('BusinessApiProvider: $e');
      rethrow;
    }
  }

  delete( String userId) async {
    final token = await TokenApiProvider().getToken();
    try {
      final response = await http.delete(
        Uri.parse('$baseUrl/business/delete/$userId'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );
      var dataDecoded = json.decode(response.body.toString());

      if (dataDecoded['messages']['code'] == 0) {
        return dataDecoded;
      }
    } catch (e) {
      Logger().e('BusinessApiProvider: $e');
      rethrow;
    }
  }
}
