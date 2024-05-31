
import 'package:flutter/material.dart';
import 'package:flutter_app/ui/feedback.dart';
import 'package:flutter_app/ui/home.dart';
import 'package:flutter_app/ui/my_name.dart';
import 'package:flutter_app/ui/resultApiArgument.dart';
import 'package:flutter_app/ui/result_api.dart';
import 'package:flutter_app/utils/theme.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlutterApp',
      theme: baseTheme(),
      routes: {
        '/home'  : (context) => Home(),
        '/my_name'  : (context) => MyName(),
        '/result_api'  : (context) => ResultApi(
            argument: ModalRoute.of(context)!.settings.arguments as ArgumentRsultApi
        ),
        '/feedback_form'  : (context) => FeedbackForm(),
      },
      initialRoute: '/home',
      builder: EasyLoading.init(),
    );
  }
}