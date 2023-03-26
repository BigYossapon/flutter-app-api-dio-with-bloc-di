import 'dart:io';

import 'package:injectable/injectable.dart';

import '../model/employee_model.dart';

@injectable
abstract class EmployeesRepository {
  Future<List<EmployeeModel>> getEmployeeData();

  Future<void> postEmployeeData(EmployeeModel employeeModel, File? file);

  Future<void> putEmployeeData(EmployeeModel employeeModel, File? file);

  Future<void> deleteEmployeeData(int? id);
}
