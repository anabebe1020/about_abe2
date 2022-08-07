import 'dart:convert';

import 'package:anabebe_packages/utils/log.dart';
import 'package:http/http.dart' as http;

final _logger = Logger();

/// Http client singleton class
class HttpClient {
  static final HttpClient _singleton = HttpClient._internal();

  factory HttpClient() {
    return _singleton;
  }

  HttpClient._internal();

  /// Setup
  Future<void> init() async {
    _logger.setup('HTTP_REQ');
    return;
  }

  /// Http GET
  Future<String> get(Uri uri, Map<String, String> headers) async {
    _logger.log('GET URI: ${uri.toString()}');
    if (headers.isEmpty) {
      headers['content-type'] = 'application/json';
    }

    String content = '';
    try {
      final resp = await http.get(uri, headers: headers);
      if (resp.statusCode == 200) {
        content = resp.body; //json.decode(resp.body);
      } else {
        throw Exception('Failed to post ${resp.statusCode}');
      }
    } catch (e) {
      _logger.log(e.toString());
    }

    return content;
  }

  /// Http POST
  Future<Map<String, dynamic>> post(
      Uri uri, Map<String, String> headers) async {
    _logger.log('POST URI: ${uri.toString()}');

    if (headers.isEmpty) {
      headers['content-type'] = 'application/json';
    }

    Map<String, dynamic> content = {};

    final body = json.encode({'name': 'moke'});

    try {
      final resp = await http.post(uri, headers: headers, body: body);
      if (resp.statusCode == 200) {
        content = json.decode(resp.body);
      } else {
        throw Exception('Failed to post ${resp.statusCode}');
      }
    } catch (e) {
      _logger.log(e.toString());
    }
    return content;
  }
}
