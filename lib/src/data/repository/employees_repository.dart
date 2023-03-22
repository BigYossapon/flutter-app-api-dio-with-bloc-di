import 'dart:io';

import 'package:flutter_app_test01/src/data/api/employees_client.dart';
import 'package:injectable/injectable.dart';

import '../model/employee_model.dart';

abstract class EmployeesRepository {
  Future<List<EmployeeModel>> getEmployeeData();

  Future<dynamic> postEmployeeData(EmployeeModel employeeModel, File file);

  Future<EmployeeModel> putEmployeeData(EmployeeModel employeeModel, File file);

  Future<EmployeeModel> deleteEmployeeData(int id);
}

class EmployeesRepositoryImpl extends EmployeesRepository {
  final EmployeesClient employeesClient;

  EmployeesRepositoryImpl(this.employeesClient);

  @override
  Future<EmployeeModel> deleteEmployeeData(int id) {
    // TODO: implement deleteEmployeeData
    employeesClient.deleteEmployeeData(id);
    throw UnimplementedError();
  }

  @override
  Future<List<EmployeeModel>> getEmployeeData() {
    // TODO: implement getEmployeeData
    employeesClient.getEmployeeData();
    throw UnimplementedError();
  }

  @override
  Future postEmployeeData(EmployeeModel employeeModel, File file) {
    // TODO: implement postEmployeeData
    employeesClient.postEmployeeData(employeeModel: employeeModel, file: file);
    throw UnimplementedError();
  }

  @override
  Future<EmployeeModel> putEmployeeData(
      EmployeeModel employeeModel, File file) {
    // TODO: implement putEmployeeData
    employeesClient.putEmployeeData(employeeModel, file);
    throw UnimplementedError();
  }
}
