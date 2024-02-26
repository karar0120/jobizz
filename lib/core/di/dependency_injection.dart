import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:jobizz/core/networking/api_service.dart';
import 'package:jobizz/core/networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  // getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt<ApiService>()));
  // getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<LoginRepo>()));

  // register
}
