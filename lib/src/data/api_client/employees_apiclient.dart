import 'package:dio/dio.dart';
import 'package:flutter_app_test01/src/data/api_service/employees_apiservice.dart';

class EmployeesApiClient {
  late final Dio _dio;
  late final EmployeesApiService _service;

  EmployeesApiClient() {
    _dio = Dio();
    _dio.interceptors
        .add(LogInterceptor(requestBody: true, responseBody: true));
    _service = EmployeesApiService(_dio);
  }

  EmployeesApiService getService() {
    return _service;
  }
}
