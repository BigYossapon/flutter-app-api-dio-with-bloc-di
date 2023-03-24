import 'dart:io';

import 'package:dio/dio.dart';

import 'package:injectable/injectable.dart';

import '../api_service/employees_apiservice.dart';
import '../model/employee_model.dart';
import 'employees_repository.dart';

@lazySingleton
class EmployeesRepositoryimpl implements EmployeesRepository {
  final EmployeesApiService _employeesApiService;

  EmployeesRepositoryimpl(this._employeesApiService);

  @override
  Future<void> deleteEmployeeData(int? id) =>
      _employeesApiService.deleteEmployeeData(id!);

  @override
  Future<List<EmployeeModel>> getEmployeeData() =>
      _employeesApiService.getEmployeeData();

  @override
  Future<void> postEmployeeData(EmployeeModel employeeModel, File? file) =>
      _employeesApiService.postEmployeeData(
          employeeModel: employeeModel, file: file);

  @override
  Future<void> putEmployeeData(EmployeeModel employeeModel, File? file) =>
      _employeesApiService.putEmployeeData(
          employeeModel: employeeModel, file: file);
}
