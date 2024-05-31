import 'package:flutter/material.dart';
import 'package:flutter_app/service/model/hive/feedback.dart';
import 'package:hive_flutter/hive_flutter.dart';


class StorageService {
  late Box<FeedbackModel> feedback;

  Future<void> initService() async {
    await Hive.initFlutter();

    Hive.registerAdapter(FeedbackModelAdapter());
    feedback = await Hive.openBox<FeedbackModel>("feedback");
  }

  Future<void> saveData(mail, message) async {
    feedback.put("feedback", FeedbackModel(form1: mail, form2: message));
  }

}