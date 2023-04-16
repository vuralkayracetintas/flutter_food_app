import 'package:dio/dio.dart';
import 'package:food_app/app/app_base_view_model.dart';
import 'package:food_app/core/api/api_client.dart';
import 'package:food_app/core/repository/repository.dart';
import 'package:food_app/core/services/api_service.dart';
import 'package:get_it/get_it.dart';
import 'package:stacked_services/stacked_services.dart';

final getIt = GetIt.instance;

void setupDI() {
  getIt.registerLazySingleton(() => AppBaseViewModel());
  getIt.registerLazySingleton(() => NavigationService());
  //Network

  getIt.registerLazySingleton<Dio>(() => ApiClient().getDio());
  getIt.registerLazySingleton(() => ApiService(getIt.get()));
  getIt.registerLazySingleton(() => Repository(getIt.get()));
}
