import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:music_app_spotify/config/injection.dart';
import 'package:music_app_spotify/services/music_service.dart';
import 'package:music_app_spotify/ui/controller/home_controller.dart';
import 'package:music_app_spotify/ui/pages/home_page.dart';

class Page2 extends StatelessWidget {
  MusicService musicService = Get.put(MusicService());

  static var routeName = '/page2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('MusicService +'),
              onPressed: () {
                musicService.buttonClicked();
              },
            ),
            Obx(() {
              print('MusicService Splash OBX regenerated');
              return Text(
                musicService.clickedTimesSubject.value.toString(),
                style: TextStyle(fontSize: 14, color: Colors.lightGreenAccent),
              );
            }),
          ],
        ),
      ),
    );
  }
}
