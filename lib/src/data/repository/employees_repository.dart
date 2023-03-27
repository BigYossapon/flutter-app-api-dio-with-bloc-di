import 'dart:io';

import 'package:injectable/injectable.dart';

import '../model/employee_model.dart';
import '../model/request_model/request_employee_model.dart';

abstract class EmployeesRepository {
  Future<List<EmployeeModel>> getEmployeeData();

  Future<void> postEmployeeData(String? name, String? mail, String? address,
      String? phone, String? position, File? file);

  Future<void> putEmployeeData(int? id, String? name, String? mail,
      String? address, String? phone, String? position, File? file);

  Future<void> deleteEmployeeData(int? id);
}
