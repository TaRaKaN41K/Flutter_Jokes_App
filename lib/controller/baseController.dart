import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_app/service/app_service.dart';
import 'package:flutter_app/ui/resultApiArgument.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';


class BaseController extends GetxController {
  final AppService appService;

  BaseController({required this.appService});


  Future<void> joke() async {
    String? _joke = await appService.fetchJoke();

    if (_joke == null)
    {
      EasyLoading.showError("Ошибка запроса");
    } else {
      Navigator.of(Get.overlayContext!).pushNamed("/result_api", arguments: ArgumentRsultApi(field1: _joke));
    }
  }
}