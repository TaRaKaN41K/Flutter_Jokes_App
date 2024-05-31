import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter_app/service/storage_service.dart';


class AppService {
  late StorageService storageService;

  Dio dio;

  AppService({required this.dio}) : super();

  Future<String?> fetchJoke() async {
    String? _joke;
    String? _error;

    try {
      final response = await dio.get('https://official-joke-api.appspot.com/random_joke');
      if (response.statusCode == 200) {
          _joke = '${response.data['setup']}\n${response.data['punchline']}';
          _error = null;
      } else {
          _error = 'Failed to load joke: ${response.statusCode}';
          _joke = null;
      }
    } catch (e) {
        _error = 'Failed to load joke: $e';
        _joke = null;
    }

    return _joke;
  }

}