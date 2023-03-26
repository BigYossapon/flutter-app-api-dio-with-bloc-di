import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_app_test01/src/data/model/employee_model.dart';

import 'package:flutter_app_test01/src/data/repository/employees_repositoryimpl.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import '../../../../../data/repository/employees_repository.dart';

part 'employeesdataget_event.dart';
part 'employeesdataget_state.dart';

@injectable
class EmployeesdatagetBloc
    extends Bloc<EmployeesdatagetEvent, EmployeesdatagetState> {
  final EmployeesRepository _employeesRepository;
  EmployeesdatagetBloc(this._employeesRepository)
      : super(EmployeesDataLoadingState()) {
    on<LoadEmployeesdataEvent>((event, emit) async {
      emit(EmployeesDataLoadingState());
      try {
        final employees = await _employeesRepository.getEmployeeData();
        emit(EmployeesDataLoadedState(employees));
      } catch (e) {
        emit(EmployeesDataErrorState(e.toString()));
      }
    });
  }
}
