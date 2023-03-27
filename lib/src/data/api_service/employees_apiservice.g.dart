// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employees_apiservice.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _EmployeesApiService implements EmployeesApiService {
  _EmployeesApiService(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'http://192.168.1.102:8000/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<EmployeeModel>> getEmployeeData() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<List<dynamic>>(_setStreamType<List<EmployeeModel>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'employees/get',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => EmployeeModel.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<void> postEmployeeData(
    name,
    mail,
    address,
    phone,
    position,
    file,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = FormData();
    if (name != null) {
      _data.fields.add(MapEntry(
        'Name',
        name,
      ));
    }
    if (mail != null) {
      _data.fields.add(MapEntry(
        'Mail',
        mail,
      ));
    }
    if (address != null) {
      _data.fields.add(MapEntry(
        'Address',
        address,
      ));
    }
    if (phone != null) {
      _data.fields.add(MapEntry(
        'Phone',
        phone,
      ));
    }
    if (position != null) {
      _data.fields.add(MapEntry(
        'Position',
        position,
      ));
    }
    _data.files.add(MapEntry(
      'Image_employee',
      MultipartFile.fromFileSync(
        file.path,
        filename: file.path.split(Platform.pathSeparator).last,
      ),
    ));
    await _dio.fetch<void>(_setStreamType<void>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'multipart/form-data',
    )
        .compose(
          _dio.options,
          'employees/add',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
  }

  @override
  Future<void> putEmployeeData(
    id,
    name,
    mail,
    address,
    phone,
    position,
    file,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = FormData();
    if (name != null) {
      _data.fields.add(MapEntry(
        'Name',
        name,
      ));
    }
    if (mail != null) {
      _data.fields.add(MapEntry(
        'Mail',
        mail,
      ));
    }
    if (address != null) {
      _data.fields.add(MapEntry(
        'Address',
        address,
      ));
    }
    if (phone != null) {
      _data.fields.add(MapEntry(
        'Phone',
        phone,
      ));
    }
    if (position != null) {
      _data.fields.add(MapEntry(
        'Position',
        position,
      ));
    }
    if (file != null) {
      _data.files.add(MapEntry(
        'Image_employee',
        MultipartFile.fromFileSync(
          file!.path,
          filename: file.path.split(Platform.pathSeparator).last,
        ),
      ));
    }

    await _dio.fetch<void>(_setStreamType<void>(Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
      contentType: 'multipart/form-data',
    )
        .compose(
          _dio.options,
          'employees/edit/${id}',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
  }

  @override
  Future<void> deleteEmployeeData(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    await _dio.fetch<void>(_setStreamType<void>(Options(
      method: 'DELETE',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          'employees/delete/${id}',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
