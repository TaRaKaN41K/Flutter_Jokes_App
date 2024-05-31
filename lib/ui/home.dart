import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/controller/baseController.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

import '../service/app_service.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final controller = Get.put(BaseController(appService: GetIt.I<AppService>()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(child: Center(child: Text("JOKES App"))),
            Row(
              children: [
                Expanded(child: ElevatedButton(onPressed: (){
                  Navigator.of(context).pushNamed("/my_name");
                }, child: Text("Me"))),
                Container(width: 50,),
                Expanded(child: ElevatedButton(onPressed: (){
                  controller.joke();
                }, child: Text("JOKE"))),
              ],
            ),
            Container(
              height: 80,
            ),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed("/feedback_form");
            }, child: Text("review")),
          ],
        ),
      ),
    );
  }
}
