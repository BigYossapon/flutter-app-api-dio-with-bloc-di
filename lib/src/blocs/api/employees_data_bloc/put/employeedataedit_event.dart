part of 'employeedataedit_bloc.dart';

abstract class EmployeedataeditEvent extends Equatable {
  const EmployeedataeditEvent();

  @override
  List<Object> get props => [];
}

class EditEmployeedataEvent extends EmployeedataeditEvent {
  EmployeeModel employeeModel;
  File? file;

  EditEmployeedataEvent(this.employeeModel, this.file);
  @override
  List<Object> get props => [];
}
