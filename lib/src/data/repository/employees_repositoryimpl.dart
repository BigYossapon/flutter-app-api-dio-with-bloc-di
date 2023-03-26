import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_app_test01/src/data/api_client/employees_apiclient.dart';

import 'package:injectable/injectable.dart';

import '../api_service/employees_apiservice.dart';
import '../model/employee_model.dart';
import 'employees_repository.dart';

@lazySingleton
@injectable
class EmployeesRepositoryimpl implements EmployeesRepository {
  late EmployeesApiService _employeesApiService;

  EmployeesRepositoryimpl() {
    _employeesApiService = EmployeesApiClient().getService();
    // EmployeesApiService(_dio);
  }

  @override
  Future<void> deleteEmployeeData(int? id) {
    // TODO: implement deleteEmployeeData
    _employeesApiService.deleteEmployeeData(id);
    throw UnimplementedError();
  }

  @override
  Future<List<EmployeeModel>> getEmployeeData() {
    // TODO: implement getEmployeeData
    _employeesApiService.getEmployeeData();
    throw UnimplementedError();
  }

  @override
  Future<void> postEmployeeData(EmployeeModel employeeModel, File? file) {
    // TODO: implement postEmployeeData
    _employeesApiService.postEmployeeData(
        employeeModel: employeeModel, file: file);
    throw UnimplementedError();
  }

  @override
  Future<void> putEmployeeData(EmployeeModel employeeModel, File? file) {
    // TODO: implement putEmployeeData
    _employeesApiService.putEmployeeData(
        employeeModel: employeeModel, file: file);
    throw UnimplementedError();
  }
}
