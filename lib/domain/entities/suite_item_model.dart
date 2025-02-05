import 'package:equatable/equatable.dart';

class SuiteItemEntity extends Equatable {
  final String nome;

  const SuiteItemEntity({required this.nome});

  @override
  List<Object> get props => [nome];
}
