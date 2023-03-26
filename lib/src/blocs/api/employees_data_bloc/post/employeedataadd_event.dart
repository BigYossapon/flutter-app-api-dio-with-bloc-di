part of 'employeedataadd_bloc.dart';

abstract class EmployeedataaddEvent extends Equatable {
  const EmployeedataaddEvent();
}

class AddEmployeedataEvent extends EmployeedataaddEvent {
  EmployeeModel employeeModel;
  File file;

  AddEmployeedataEvent(this.employeeModel, this.file);

  @override
  List<Object> get props => [];
}
