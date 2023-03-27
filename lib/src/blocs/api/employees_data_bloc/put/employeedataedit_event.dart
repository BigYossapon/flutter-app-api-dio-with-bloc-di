part of 'employeedataedit_bloc.dart';

abstract class EmployeedataeditEvent extends Equatable {
  const EmployeedataeditEvent();

  @override
  List<Object> get props => [];
}

class EditEmployeedataEvent extends EmployeedataeditEvent {
  String mail, address, phone, name, position;
  int id;
  File? file;

  EditEmployeedataEvent(this.id, this.name, this.mail, this.address, this.phone,
      this.position, this.file);
  @override
  List<Object> get props => [];
}
