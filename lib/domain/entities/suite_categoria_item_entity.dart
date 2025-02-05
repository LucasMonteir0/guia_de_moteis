import 'package:equatable/equatable.dart';

class SuiteCategoriaItemEntity extends Equatable {
  final String nome;
  final String icone;

  const SuiteCategoriaItemEntity({
    required this.nome,
    required this.icone,
  });

  @override
  List<Object> get props => [nome, icone];
}
