import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_app_test01/src/data/api_client/employees_apiclient.dart';

import 'package:injectable/injectable.dart';

import '../api_service/employees_apiservice.dart';
import '../model/employee_model.dart';
import '../model/request_model/request_employee_model.dart';
import 'employees_repository.dart';

@lazySingleton
@injectable
class EmployeesRepositoryimpl extends EmployeesRepository {
  late EmployeesApiService _employeesApiService;

  EmployeesRepositoryimpl() {
    _employeesApiService = EmployeesApiClient().getService();
    // EmployeesApiService(_dio);
  }

  @override
  Future<void> deleteEmployeeData(int? id) {
    // TODO: implement deleteEmployeeData

    return _employeesApiService.deleteEmployeeData(id);
    //throw UnsupportedError;
  }

  @override
  Future<List<EmployeeModel>> getEmployeeData() {
    // TODO: implement getEmployeeData
    return _employeesApiService.getEmployeeData();
    //throw UnimplementedError();
  }

  @override
  Future<void> postEmployeeData(String? name, String? mail, String? address,
      String? phone, String? position, File? file) {
    // TODO: implement postEmployeeData
    return _employeesApiService.postEmployeeData(
        name, mail, address, phone, position, file!);

    //throw UnsupportedError;
  }

  @override
  Future<void> putEmployeeData(int? id, String? name, String? mail,
      String? address, String? phone, String? position, File? file) {
    // TODO: implement putEmployeeData
    return _employeesApiService.putEmployeeData(
        id, name, mail, address, phone, position, file);

    //throw UnsupportedError;
  }
}
