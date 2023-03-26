import 'dart:convert';
import 'dart:io';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:flutter_app_test01/src/data/model/employee_model.dart';
import 'package:retrofit/retrofit.dart';

part 'employees_apiservice.g.dart';

@RestApi(baseUrl: 'http://192.168.1.102:8000/')
abstract class EmployeesApiService {
  factory EmployeesApiService(Dio dio, {String? baseUrl}) =
      _EmployeesApiService;

  @GET('employees/get')
  Future<List<EmployeeModel>> getEmployeeData();

  @POST('employees/add')
  @MultiPart()
  Future<void> postEmployeeData(
      {@Part() EmployeeModel? employeeModel, @Part() File? file});

  @PUT('employees/edit/{id}')
  @MultiPart()
  Future<void> putEmployeeData(
      {@Part() EmployeeModel? employeeModel, @Part() File? file});

  @DELETE('employees/delete/{id}')
  Future<void> deleteEmployeeData(@Path() int? id);
}
