// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart';

import 'package:flutter_app_test01/src/blocs/api/employees_data_bloc/put/employeedataedit_bloc.dart';
import 'package:flutter_app_test01/src/data/api_service/employees_apiservice.dart';
import 'package:flutter_app_test01/src/data/repository/employee_repository.dart';
import 'package:flutter_app_test01/src/data/repository/employees_repository.dart';

import 'package:flutter_app_test01/src/data/repository/employees_repositoryimpl.dart';
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart';
import 'package:injectable/injectable.dart' as _i2;

import '../blocs/api/employees_data_bloc/delete/employeedatadelete_bloc.dart';
import '../blocs/api/employees_data_bloc/get/employees/employeesdataget_bloc.dart';
import '../blocs/api/employees_data_bloc/post/employeedataadd_bloc.dart';
import 'injection.dart';

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final employeeModule = _$EmployeeModule();
  gh.lazySingleton<Dio>(() => employeeModule.dio);

  gh.factory<EmployeedataeditBloc>(
      () => EmployeedataeditBloc(getIt<EmployeesRepository>()));
  gh.factory<EmployeesdatagetBloc>(
      () => EmployeesdatagetBloc(getIt<EmployeesRepository>()));

  gh.lazySingleton<LogInterceptor>(() => employeeModule.loggingInter);
  gh.factory<EmployeedataaddBloc>(
      () => EmployeedataaddBloc(getIt<EmployeesRepository>()));
  gh.factory<EmployeedatadeleteBloc>(
      () => EmployeedatadeleteBloc(getIt<EmployeesRepository>()));
  gh.lazySingleton<EmployeesApiService>(
      () => employeeModule.employeesApiService(
            gh<Dio>(),
            gh<LogInterceptor>(),
          ));
  gh.lazySingleton<EmployeesRepositoryimpl>(
      () => EmployeesRepositoryimpl(getIt<EmployeesApiService>()));
  return getIt;
}

class _$EmployeeModule extends EmployeeModule {}
