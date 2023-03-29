// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:flutter_app_test01/src/blocs/api/employees_data_bloc/delete/employeedatadelete_bloc.dart'
    as _i6;
import 'package:flutter_app_test01/src/blocs/api/employees_data_bloc/get/employees/employeesdataget_bloc.dart'
    as _i9;
import 'package:flutter_app_test01/src/blocs/api/employees_data_bloc/post/employeedataadd_bloc.dart'
    as _i4;
import 'package:flutter_app_test01/src/blocs/api/employees_data_bloc/put/employeedataedit_bloc.dart'
    as _i7;
import 'package:flutter_app_test01/src/data/api_service/employees_apiservice.dart'
    as _i10;
import 'package:flutter_app_test01/src/data/repository/employees_repository.dart'
    as _i5;
import 'package:flutter_app_test01/src/data/repository/employees_repositoryimpl.dart'
    as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/employee_module.dart' as _i12;
import 'injection.dart' as _i11;

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
  // final employeeModule = _$EmployeeModule();
  // gh.lazySingleton<_i3.Dio>(() => employeeModule.dio);
  gh.factory<_i4.EmployeedataaddBloc>(
      () => _i4.EmployeedataaddBloc(getIt<_i8.EmployeesRepositoryimpl>()));
  gh.factory<_i6.EmployeedatadeleteBloc>(
      () => _i6.EmployeedatadeleteBloc(getIt<_i8.EmployeesRepositoryimpl>()));
  gh.factory<_i7.EmployeedataeditBloc>(
      () => _i7.EmployeedataeditBloc(getIt<_i8.EmployeesRepositoryimpl>()));

  gh.lazySingleton<_i8.EmployeesRepositoryimpl>(
      () => _i8.EmployeesRepositoryimpl());
  gh.factory<_i9.EmployeesdatagetBloc>(
      () => _i9.EmployeesdatagetBloc(getIt<_i8.EmployeesRepositoryimpl>()));
  // gh.lazySingleton<_i3.LogInterceptor>(() => employeeModule.loggingInter);

  return getIt;
}

// class _$EmployeeModule extends _i12.EmployeeModule {}
