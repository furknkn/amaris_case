import 'package:amaris_case/core/init/notifier/provider_list.dart';
import 'package:amaris_case/core/utility/screen_size.dart';
import 'package:amaris_case/feature/news/repository/news_repository.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton<ScreenSize>(() => ScreenSize());
  getIt.registerLazySingleton<ApplicationProviderList>(() => ApplicationProviderList());
    getIt.registerLazySingleton<NewsRepository>(() => NewsRepository());

 
}