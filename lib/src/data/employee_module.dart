import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'api_service/employees_apiservice.dart';

@module
abstract class EmployeeModule {
  @lazySingleton
  Dio get dio => Dio();

  // @lazySingleton
  // EmployeesApiService get _employeesApiService => EmployeesApiService(dio);

  // @LazySingleton()
  // EmployeesApiService employeesApiService(
  //     @injectable Dio dio, @injectable LogInterceptor logInterceptor) {
  //   return EmployeesApiService(dio);
}

  // @lazySingleton
  // LogInterceptor get loggingInter => LogInterceptor(requestBody: true);

