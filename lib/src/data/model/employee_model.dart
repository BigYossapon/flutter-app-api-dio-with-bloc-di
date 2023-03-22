// To parse this JSON data, do
//
//     final employeeModel = employeeModelFromJson(jsonString);
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'employee_model.g.dart';

@JsonSerializable()
class EmployeeModel {
  @JsonKey(name: 'ID')
  int? id;
  @JsonKey(name: 'Name')
  String? name;
  @JsonKey(name: 'Phone')
  String? phone;
  @JsonKey(name: 'Address')
  String? address;
  @JsonKey(name: 'Position')
  String? position;
  @JsonKey(name: 'Mail')
  String? mail;
  @JsonKey(name: 'Image_employee')
  String? imageEmployee;

  EmployeeModel({
    this.id,
    this.name,
    this.phone,
    this.address,
    this.position,
    this.mail,
    this.imageEmployee,
  });

  factory EmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeeModelFromJson(json);

  Map<String, dynamic> toJson() => _$EmployeeModelToJson(this);
}
