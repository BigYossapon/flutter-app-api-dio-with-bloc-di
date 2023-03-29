import 'package:dio/dio.dart';
import 'package:flutter_app_test01/src/data/api_client/employees_apiclient.dart';
import 'package:flutter_app_test01/src/data/api_service/employees_apiservice.dart';
import 'package:flutter_app_test01/src/data/repository/employees_repositoryimpl.dart';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_app_test01/src/di/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<GetIt> configureDependencies() async => await $initGetIt(getIt);
