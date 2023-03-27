// To parse this JSON data, do
//
//     final employeeModel = employeeModelFromJson(jsonString);
import 'dart:io';
import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'request_employee_model.g.dart';

@JsonSerializable()
class RequestEmployeeModel {
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

  RequestEmployeeModel({
    this.id,
    this.name,
    this.phone,
    this.address,
    this.position,
    this.mail,
  });

  factory RequestEmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$RequestEmployeeModelFromJson(json);

  Map<String, dynamic> toJson() => _$RequestEmployeeModelToJson(this);
}
