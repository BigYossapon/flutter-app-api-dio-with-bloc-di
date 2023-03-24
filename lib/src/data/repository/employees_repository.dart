import 'dart:io';

import '../model/employee_model.dart';

abstract class EmployeesRepository {
  Future<List<EmployeeModel>> getEmployeeData();

  Future<void> postEmployeeData(EmployeeModel employeeModel, File? file);

  Future<void> putEmployeeData(EmployeeModel employeeModel, File? file);

  Future<void> deleteEmployeeData(int? id);
}
