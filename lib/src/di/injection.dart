import 'package:dio/dio.dart';
import 'package:flutter_app_test01/src/data/api_service/employees_apiservice.dart';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_app_test01/src/di/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<GetIt> configureDependencies() async => await $initGetIt(getIt);

@module
abstract class EmployeeModule {
  @lazySingleton
  Dio get dio => Dio();

  @LazySingleton()
  EmployeesApiService employeesApiService(
      @injectable Dio dio, @injectable LogInterceptor logInterceptor) {
    return EmployeesApiService(dio);
  }

  @lazySingleton
  LogInterceptor get loggingInter => LogInterceptor(requestBody: true);
}
