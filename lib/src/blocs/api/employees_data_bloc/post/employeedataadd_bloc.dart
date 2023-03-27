import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:injectable/injectable.dart';
import '../../../../data/model/employee_model.dart';
import '../../../../data/model/request_model/request_employee_model.dart';
import '../../../../data/repository/employees_repository.dart';

part 'employeedataadd_event.dart';
part 'employeedataadd_state.dart';

@injectable
class EmployeedataaddBloc
    extends Bloc<EmployeedataaddEvent, EmployeedataaddState> {
  final EmployeesRepository _employeeRepository;

  EmployeedataaddBloc(this._employeeRepository)
      : super(EmployeedataaddingState()) {
    on<AddEmployeedataEvent>((event, emit) async {
      print('bloc employee request is $event');
      // TODO: implement event handler
      emit(EmployeedataaddingState());
      try {
        //final employee =
        // await _employeeRepository.postEmployeeData(event.employeeModel);
        await _employeeRepository.postEmployeeData(event.name, event.mail,
            event.address, event.phone, event.position, event.file);
        emit(EmployeedataaddedState('add data success'));
      } catch (e) {
        emit(EmployeedataErrorState(e.toString()));
        print(e.toString());
      }
    });
  }
}
