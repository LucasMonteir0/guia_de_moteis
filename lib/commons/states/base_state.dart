import "package:equatable/equatable.dart";
import "package:guia_de_moteis/commons/errors/base_error.dart";
import "package:guia_de_moteis/commons/errors/errors.dart";

abstract class BaseState extends Equatable {}

class LoadingState implements BaseState {
  @override
  List<Object?> get props => [];

  @override
  bool get stringify => false;
}

class SuccessState<T> implements BaseState {
  final T data;

  const SuccessState(this.data);

  @override
  List<Object?> get props => [data];

  @override
  bool get stringify => false;
}

class InitialState<T> implements BaseState {
  final T? data;

  const InitialState([this.data]);

  @override
  List<Object?> get props => [data];

  @override
  bool get stringify => false;
}

class ErrorState<T> implements BaseState {
  final BaseError error;

  ErrorState(BaseError? e) : error = (e ?? UnknownError());

  @override
  List<Object?> get props => [error];

  @override
  bool get stringify => false;
}
