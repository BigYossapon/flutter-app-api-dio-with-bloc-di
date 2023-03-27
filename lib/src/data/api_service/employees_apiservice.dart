import 'dart:convert';
import 'dart:io';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:flutter_app_test01/src/data/model/employee_model.dart';
import 'package:retrofit/retrofit.dart';

import '../model/request_model/request_employee_model.dart';

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
      @Part(name: 'Name') String? name,
      @Part(name: 'Mail') String? mail,
      @Part(name: 'Address') String? address,
      @Part(name: 'Phone') String? phone,
      @Part(name: 'Position') String? position,
      @Part(name: 'Image_employee') File file);

  // @POST('employees/add')
  // @MultiPart()
  // Future<void> postEmployeeData(
  //     {@Part() EmployeeModel? employeeModel, @Part() File? file});

  @PUT('employees/edit/{id}')
  @MultiPart()
  Future<void> putEmployeeData(
      @Path() int? id,
      @Part(name: 'Name') String? name,
      @Part(name: 'Mail') String? mail,
      @Part(name: 'Address') String? address,
      @Part(name: 'Phone') String? phone,
      @Part(name: 'Position') String? position,
      @Part(name: 'Image_employee') File? file);

  @DELETE('employees/delete/{id}')
  Future<void> deleteEmployeeData(@Path() int? id);
}
