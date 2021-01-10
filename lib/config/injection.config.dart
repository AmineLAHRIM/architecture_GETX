// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../ui/controller/home_controller.dart';
import '../data/repositories/music_repository.dart';
import '../services/music_service.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.factory<HomeController>(() => HomeController());
  gh.factory<MusicRepository>(() => MusicRepository());
  gh.lazySingleton<MusicService>(() => MusicService());
  return get;
}
