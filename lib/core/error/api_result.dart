import 'package:equatable/equatable.dart';

abstract class ApiResult<T> extends Equatable {
  const ApiResult();

  @override
  List<Object?> get props => [];
}

class ApiSuccess<T> extends ApiResult<T> {
  final T data;

  const ApiSuccess(this.data);

  @override
  List<Object?> get props => [data];
}

class ApiError<T> extends ApiResult<T> {
  final String message;
  final int? statusCode;

  const ApiError({
    required this.message,
    this.statusCode,
  });

  @override
  List<Object?> get props => [message, statusCode];
}

class ApiLoading<T> extends ApiResult<T> {}
