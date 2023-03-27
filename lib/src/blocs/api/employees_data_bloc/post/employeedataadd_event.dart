part of 'employeedataadd_bloc.dart';

abstract class EmployeedataaddEvent extends Equatable {
  const EmployeedataaddEvent();
}

class AddEmployeedataEvent extends EmployeedataaddEvent {
  String mail, address, phone, name, position;
  File file;

  AddEmployeedataEvent(
      this.name, this.mail, this.address, this.phone, this.position, this.file);

  @override
  List<Object> get props => [];
}
