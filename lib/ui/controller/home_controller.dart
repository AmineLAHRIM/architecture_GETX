import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeController extends GetxController {
  var clickedTimesSubject = 0.obs;
  var clickedTimesSubject2 = 0.obs;

  @override
  void onInit() {
    print('Button Clicked' + clickedTimesSubject.value.toString());
  }

  void buttonClicked() {
    clickedTimesSubject.value = clickedTimesSubject.value+1;
    print('HomeController Button Clicked' + clickedTimesSubject.value.toString());
  }

  void numberToStartWith(int number) {
    clickedTimesSubject2.value = number;
    print('Button Clicked numberToStartWith' +
        clickedTimesSubject2.value.toString());
  }

  @override
  void onClose() {
    // TODO: implement onClose
    print('HomeController onClose');
    super.onClose();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    print('HomeController dispose');
    super.dispose();
  }

}
