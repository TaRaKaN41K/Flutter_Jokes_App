
import 'package:hive_flutter/hive_flutter.dart';

part 'feedback.g.dart';

@HiveType(typeId: 1)
class FeedbackModel {
  FeedbackModel({
    required this.form1,
    required this.form2,
  });

  @HiveField(0)
  String? form1;

  @HiveField(1)
  String? form2;


}