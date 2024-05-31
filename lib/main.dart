import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/service/app_service.dart';
import 'package:flutter_app/service/storage_service.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  StorageService storageService = StorageService();
  await storageService.initService();

  Dio dio = Dio();
  AppService appService = AppService(dio: dio);
  appService.storageService = storageService;
  GetIt.I.registerSingleton(appService);

  EasyLoading.init();


  runZonedGuarded(() => runApp(App()), (e, st) {
  });

}

