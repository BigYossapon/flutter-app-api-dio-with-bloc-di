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
  final employeeModule = _$EmployeeModule();
  gh.lazySingleton<_i3.Dio>(() => employeeModule.dio);
  gh.factory<_i4.EmployeedataaddBloc>(
      () => _i4.EmployeedataaddBloc(gh<_i5.EmployeesRepository>()));
  gh.factory<_i6.EmployeedatadeleteBloc>(
      () => _i6.EmployeedatadeleteBloc(gh<_i5.EmployeesRepository>()));
  gh.factory<_i7.EmployeedataeditBloc>(
      () => _i7.EmployeedataeditBloc(gh<_i5.EmployeesRepository>()));
  gh.lazySingleton<_i8.EmployeesRepositoryimpl>(
      () => _i8.EmployeesRepositoryimpl());
  gh.factory<_i9.EmployeesdatagetBloc>(
      () => _i9.EmployeesdatagetBloc(gh<_i5.EmployeesRepository>()));
  gh.lazySingleton<_i3.LogInterceptor>(() => employeeModule.loggingInter);
  gh.lazySingleton<_i10.EmployeesApiService>(
      () => employeeModule.employeesApiService(
            gh<_i3.Dio>(),
            gh<_i3.LogInterceptor>(),
          ));
  return getIt;
}

class _$EmployeeModule extends _i11.EmployeeModule {}
