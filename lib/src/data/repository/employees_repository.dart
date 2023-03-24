import 'dart:io';

import 'package:dio/dio.dart';

import 'package:injectable/injectable.dart';

import '../api_service/employees_client.dart';
import '../model/employee_model.dart';
import 'employees_data_source.dart';

@lazySingleton
class EmployeesRepository implements EmployeesDataSource {
  final EmployeesClient _employeesClient;

  EmployeesRepository(this._employeesClient);

  @override
  Future<void> deleteEmployeeData(int? id) =>
      _employeesClient.deleteEmployeeData(id!);

  @override
  Future<List<EmployeeModel>> getEmployeeData() =>
      _employeesClient.getEmployeeData();

  @override
  Future<void> postEmployeeData(EmployeeModel employeeModel, File? file) =>
      _employeesClient.postEmployeeData(
          employeeModel: employeeModel, file: file);

  @override
  Future<void> putEmployeeData(EmployeeModel employeeModel, File? file) =>
      _employeesClient.putEmployeeData(
          employeeModel: employeeModel, file: file);
}
