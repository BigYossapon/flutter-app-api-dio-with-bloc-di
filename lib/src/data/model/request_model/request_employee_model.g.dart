// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_employee_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestEmployeeModel _$RequestEmployeeModelFromJson(
        Map<String, dynamic> json) =>
    RequestEmployeeModel(
      id: json['ID'] as int?,
      name: json['Name'] as String?,
      phone: json['Phone'] as String?,
      address: json['Address'] as String?,
      position: json['Position'] as String?,
      mail: json['Mail'] as String?,
    );

Map<String, dynamic> _$RequestEmployeeModelToJson(
        RequestEmployeeModel instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'Name': instance.name,
      'Phone': instance.phone,
      'Address': instance.address,
      'Position': instance.position,
      'Mail': instance.mail,
    };
