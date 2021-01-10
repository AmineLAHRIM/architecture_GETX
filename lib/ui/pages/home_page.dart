import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:music_app_spotify/config/injection.dart';
import 'package:music_app_spotify/services/music_service.dart';
import 'package:music_app_spotify/ui/controller/home_controller.dart';

class HomePage extends StatelessWidget {
  HomeController controller = Get.put(HomeController());
  MusicService musicService = Get.put(MusicService());

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('Controller +'),
              onPressed: () {
                controller.buttonClicked();
                //controller.compEvents.value=HomeEvents.buttonClicked();
              },
            ),
            RaisedButton(
              child: Text('Controller 10 number'),
              onPressed: () {
                controller.numberToStartWith(10);
              },
            ),
            Obx(() {
              print('Button OBX clickedTimesSubject regenerated');
              return Text(
                'clickedTimesSubject=' +
                    controller.clickedTimesSubject.value.toString(),
                style: TextStyle(fontSize: 14, color: Colors.blue),
              );
            }),
            Obx(() {
              print('Button OBX clickedTimesSubject2 regenerated');
              return Text('clickedTimesSubject2=' +
                  controller.clickedTimesSubject2.value.toString(),
                style: TextStyle(fontSize: 14, color: Colors.red),);
            }),
            RaisedButton(
              child: Text('MusicService +'),
              onPressed: () {
                musicService.buttonClicked();
                //musicService.fetchMusic();
              },
            ),
            /*Obx(() {
              print('MusicService Button OBX regenerated');
              var music=musicService.musicSubject.value;
              if(music!=null){
                return Text(music.name.toString());
              }
              return Center(child: CircularProgressIndicator(),);
            }),*/
            Obx(() {
              print('MusicService Obx regenerated');
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
