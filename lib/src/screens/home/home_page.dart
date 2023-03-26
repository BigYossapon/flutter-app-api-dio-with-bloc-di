import 'package:flutter/material.dart';
import 'package:flutter_app_test01/src/blocs/api/employees_data_bloc/delete/employeedatadelete_bloc.dart';
import 'package:flutter_app_test01/src/data/api_service/employees_apiservice.dart';
import 'package:flutter_app_test01/src/data/repository/employees_repository.dart';
import 'package:flutter_app_test01/src/di/Injection.dart';
import 'package:flutter_app_test01/src/screens/home/components/employee_listview.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import '../../app_route.dart';
import '../../blocs/api/employees_data_bloc/get/employees/employeesdataget_bloc.dart';

import '../../data/repository/employees_repositoryimpl.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final employeeDatagetBloc = BlocProvider<EmployeesdatagetBloc>(
        create: (context) => EmployeesdatagetBloc(EmployeesRepositoryimpl())
          ..add(LoadEmployeesdataEvent()));

    final employeedatadeleteBloc = BlocProvider<EmployeedatadeleteBloc>(
        create: (context) => EmployeedatadeleteBloc(EmployeesRepositoryimpl()));

    return MultiBlocProvider(
        providers: [employeeDatagetBloc, employeedatadeleteBloc],
        child: const EmployeeListview());
  }
}
