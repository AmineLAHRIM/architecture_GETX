import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:music_app_spotify/config/injection.dart';
import 'package:music_app_spotify/services/music_service.dart';
import 'package:music_app_spotify/ui/controller/home_controller.dart';
import 'package:music_app_spotify/ui/pages/home_page.dart';
import 'package:music_app_spotify/ui/pages/page2.dart';

class SplashPage extends StatelessWidget {
  //MusicService musicService=Get.put(MusicService());


  static var routeName='/splash';

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
              child: Text('Home Page'),
              onPressed: () {
                //Get.to(HomePage());
                Get.toNamed(HomePage.routeName);
              },
            ),
            RaisedButton(
              child: Text('Page 2'),
              onPressed: () {
                //Get.to(Page2());
                Get.toNamed(Page2.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
