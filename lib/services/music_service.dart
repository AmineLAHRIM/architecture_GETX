import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:music_app_spotify/data/models/music.dart';

@lazySingleton
class MusicService extends GetxService {
  //MusicRepository musicRepository;

  var musicSubject = Rx<Music>();

  var clickedTimesSubject = 0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    print('MusicService onInit');
    super.onInit();
  }


  void fetchMusic() async{
    await Future.delayed(Duration(seconds: 5));
    musicSubject.value=new Music(id: 11,name: 'Musicly');
  }

  void buttonClicked() {
    clickedTimesSubject.value = clickedTimesSubject.value + 1;
    print('MusicService Button Clicked' + clickedTimesSubject.value.toString());
  }

  @override
  void onClose() {
    // TODO: implement onClose
    print('MusicService onClose');
    super.onClose();
  }
}
