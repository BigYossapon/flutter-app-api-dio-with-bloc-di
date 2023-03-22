import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_app_test01/src/data/model/employee_model.dart';
import 'package:retrofit/retrofit.dart';

part 'employees_client.g.dart';

@RestApi(baseUrl: 'http://192.168.1.102:8000/')
abstract class EmployeesClient {
  factory EmployeesClient(Dio dio, {required String baseUrl}) =
      _EmployeesClient;

  @GET('employees/get')
  Future<List<EmployeeModel>> getEmployeeData();

  @POST('employees/add')
  @MultiPart()
  Future<dynamic> postEmployeeData(
      {@Part() EmployeeModel employeeModel, @Part() File? file});

  @PUT('employees/edit/{id}')
  @MultiPart()
  Future<EmployeeModel> putEmployeeData(
      @Part() EmployeeModel employeeModel, @Part() File? file);

  @DELETE('employee/delete/{id}')
  Future<EmployeeModel> deleteEmployeeData(@Path() int id);
}
